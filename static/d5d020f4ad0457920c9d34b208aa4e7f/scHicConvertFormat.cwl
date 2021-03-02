class: CommandLineTool
id: scHicConvertFormat.cwl
inputs:
- id: in_matrix
  doc: "The matrix to adjust in the scool format. (default:\nNone)"
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_output_folder
  doc: 'Folder name to save the files (default: .)'
  type: Directory?
  inputBinding:
    prefix: --outputFolder
- id: in_output_cell_name_file
  doc: "File name to save the cell names and their location\n(default: cellNameFile.txt)"
  type: File?
  inputBinding:
    prefix: --outputCellNameFile
- id: in_output_chromosome_size
  doc: "File name to save the chromosome sizes (default:\nchromosomeSize.txt)"
  type: long?
  inputBinding:
    prefix: --outputChromosomeSize
- id: in_format
  doc: 'The format of the output files (default: schicluster)'
  type: string?
  inputBinding:
    prefix: --format
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. (default: 4)"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: 'Folder name to save the files (default: .)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
- id: out_output_cell_name_file
  doc: "File name to save the cell names and their location\n(default: cellNameFile.txt)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_cell_name_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/schicexplorer:7--py_0
cwlVersion: v1.1
baseCommand:
- scHicConvertFormat
