import matplotlib.pyplot as plt
import sys

def estrai_dati(file_path):
    with open(file_path, 'r') as file:
        lines = file.readlines()

    start_index = None
    end_index = None
    for i, line in enumerate(lines):
        if "---------END OF HEADER--------------\n" in line:
            start_index = i + 1  # L'inizio dei dati è subito dopo
        if "---------END OF TABLE---------------\n" in line:
            end_index = i
            break

    if start_index is not None and end_index is not None:
        data_lines = lines[start_index:end_index]
        data = []
        for line in data_lines:
            line = line.strip()
            if line:
                try:
                    data.extend([float(value) for value in line.split()])
                except ValueError:
                    print(f"Parsing error on line: {repr(line)}")
        return data
    else:
        raise ValueError("The delimiting lines could not be found in the file.")

def plot_dati(data, output_file):
    plt.figure(figsize=(18, 6))
    plt.grid(visible=True)
    plt.plot(data, marker='o', linestyle='', color='black')
    plt.grid(True)

    ax = plt.gca()
    ax.set_ylim([-1.1, 1.1])

    plt.yticks([-1, -0.5, 0, 0.5, 1])

    plt.plot(range(len([1])), [1], linestyle='-', color='red')
    markerline2, stemlines2, baseline2 = plt.stem(range(len([1])), [1], linefmt='--', markerfmt='red', basefmt=" ")
    plt.setp(stemlines2, 'color', 'red')

    markerline, stemlines, baseline = plt.stem(range(len(data)), data, linefmt='-', markerfmt='black', basefmt=" ")
    plt.setp(stemlines, 'color', 'black')

    #plt.show()
    plt.savefig(output_file, format='png')

file_path = sys.argv[1]
try:
    dati = estrai_dati(file_path)
    plot_dati(dati, file_path+'.png')
except ValueError as e:
    print(e)
