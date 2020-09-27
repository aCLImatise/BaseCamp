class: CommandLineTool
id: scHicMergeToSCool.cwl
inputs:
- id: in_matrices
  doc: 'input file(s). (default: None)'
  type: string[]
  inputBinding:
    prefix: --matrices
- id: in_out_filename
  doc: 'File name to save the exported matrix. (default: None)'
  type: File
  inputBinding:
    prefix: --outFileName
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: 'File name to save the exported matrix. (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_out_filename)
cwlVersion: v1.1
baseCommand:
- scHicMergeToSCool
