class: CommandLineTool
id: suppa.py_joinFiles.cwl
inputs:
- id: in_input_files
  doc: "Space separated list of the files to be joined. If the\nabsolute path is not\
    \ indicate the program use the\ncurrent working directory instead."
  type: string[]
  inputBinding:
    prefix: --input-files
- id: in_file_extension
  doc: Extension of the output file. Required.
  type: File
  inputBinding:
    prefix: --file-extension
- id: in_output
  doc: "Name of the output file.\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_extension
  doc: Extension of the output file. Required.
  type: File
  outputBinding:
    glob: $(inputs.in_file_extension)
- id: out_output
  doc: "Name of the output file.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- suppa.py
- joinFiles
