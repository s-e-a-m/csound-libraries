ClearAll[extractValues, genPlot];
extractValues[txt_String] := 
  ToExpression@
   StringSplit[
    StringCases[txt, 
      "---------END OF HEADER--------------\n" ~~ Shortest[x__] ~~ 
        "\n---------END OF TABLE---------------" -> x][[1]]];
genPlot[path_String] := Module[
  {n, f, coords},
  n = path;
  f = Import[n];
  ListPlot[{extractValues[f], {1}},
   PlotRange -> {{0, 30}, {-1.1, 1.1}},
   ImageSize -> Medium,
   AspectRatio -> 1/3,
   Filling -> Axis,
   FillingStyle -> {2 -> Directive[Red, Dashed], 1 -> Black},
   PlotStyle -> {Directive[Black, Thick, PointSize[0.007]], 
     Directive[Red, Thick, PointSize[0.007]]},
   (*FrameLabel -> {Style["Samples", Black, 10], None},*)
   FormatType -> StandardForm,
   Frame -> True,
   FrameTicks -> {{Automatic, 
      Automatic}, {{#, # - 1, 0.01} & /@ {1, 6, 11, 16, 21, 26, 31}, 
      Automatic}},
   FrameStyle -> Directive[Black, Thickness[0.003], 14],
   FrameTicksStyle -> Directive[Black, 8],
   GridLines -> {Automatic, N@Subdivide[-1, 1, 4]}
   ]
  ]

SetDirectory[Directory[]];
fileNames = FileNames["*.txt", Directory[], \[Infinity]];
fileBaseNames = FileBaseName /@ fileNames;
list = genPlot /@ fileNames;
If[! DirectoryQ[Directory[] <> "/plotGraphics"], CreateDirectory["plotGraphics"], 
  DeleteDirectory[Directory[] <> "/plotGraphics", DeleteContents -> True]];
Table[Export["plotGraphics/" <> fileBaseNames[[n]] <> "-plot.pdf", 
   list[[n]]], {n, 1, Length@fileBaseNames}];