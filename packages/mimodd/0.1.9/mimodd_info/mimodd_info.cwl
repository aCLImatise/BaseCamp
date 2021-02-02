class: CommandLineTool
id: mimodd_info.cwl
inputs:
- id: in_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File
  inputBinding:
    prefix: --ofile
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_o_format
  doc: '|txt    format for the output (default: txt)'
  type: string
  inputBinding:
    prefix: --oformat
- id: in_info
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File
  outputBinding:
    glob: $(inputs.in_ofile)
cwlVersion: v1.1
baseCommand:
- mimodd
- info
