class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/suppa.py_joinFiles.cwl
inputs:
- id: input_files
  doc: Space separated list of the files to be joined. If the absolute path is not
    indicate the program use the current working directory instead.
  type: string[]
  inputBinding:
    prefix: --input-files
- id: file_extension
  doc: Extension of the output file. Required.
  type: string
  inputBinding:
    prefix: --file-extension
- id: output
  doc: Name of the output file.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- suppa.py
- joinFiles
