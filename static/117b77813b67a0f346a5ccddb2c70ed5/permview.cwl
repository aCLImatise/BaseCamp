class: CommandLineTool
id: permview.cwl
inputs:
- id: in_output
  doc: Output information into specified file.
  type: File
  inputBinding:
    prefix: -output
- id: in_decl
  doc: Show declarative security attributes on classes and methods.
  type: boolean
  inputBinding:
    prefix: -decl
- id: in_xml
  doc: Output in XML format
  type: boolean
  inputBinding:
    prefix: -xml
- id: in_assembly
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output information into specified file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- permview
