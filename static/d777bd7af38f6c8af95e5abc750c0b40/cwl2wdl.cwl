class: CommandLineTool
id: cwl2wdl.cwl
inputs:
- id: in_format
  doc: 'specify the output format (default: wdl)'
  type: string?
  inputBinding:
    prefix: --format
- id: in_validate
  doc: "validate the resulting WDL code with PyWDL (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --validate
- id: in_file
  doc: CWL file.
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cwl2wdl
