class: CommandLineTool
id: scHicManageScool.cwl
inputs:
- id: in_matrix
  doc: 'The scool matrix (default: None)'
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_out_filename
  doc: "File name to save the exported matrix, in case of\nextract the folder name\
    \ (default: None)"
  type: File?
  inputBinding:
    prefix: --outFileName
- id: in_action
  doc: "The different actions this tool is able to do. Update\ncan be used to update\
    \ scool files from scHiCExplorer\nversion 4 to the file format as it is used starting\n\
    from scHiCExplorer 5.ExtractToCool extracts either a\ngiven scool file to individual\
    \ cool files or only a\nsubset given by a list. ExtractScool requires a list\n\
    of internal cells that should be copied to a new scool\nfile. (default: none)"
  type: string?
  inputBinding:
    prefix: --action
- id: in_cell_list
  doc: "A text file with the cells that should be extracted or\ncopied to the a new\
    \ scool file. (default: None)"
  type: File?
  inputBinding:
    prefix: --cellList
- id: in_threads
  doc: "Number of threads. Using the python multiprocessing\nmodule. (default: 4)"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "File name to save the exported matrix, in case of\nextract the folder name\
    \ (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/schicexplorer:7--py_0
cwlVersion: v1.1
baseCommand:
- scHicManageScool
