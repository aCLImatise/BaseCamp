class: CommandLineTool
id: cccheck.cwl
inputs:
- id: in_assembly
  doc: Assembly to check.
  type: string?
  inputBinding:
    prefix: --assembly
- id: in_method
  doc: Method name (if you want to check only it).
  type: string?
  inputBinding:
    prefix: --method
- id: in_debug
  doc: Show debug information
  type: string?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cccheck
