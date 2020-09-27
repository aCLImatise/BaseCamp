class: CommandLineTool
id: monodocs2slashdoc.cwl
inputs:
- id: in_out
  doc: "The XML FILE to generate.\nIf not specified, will create a set of files in\n\
    the curent directory based on the //AssemblyInfo/\nAssemblyName values within\
    \ the documentation.\nUse '-' to write to standard output."
  type: File
  inputBinding:
    prefix: --out
- id: in_mdoc
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_export_msx_doc
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "The XML FILE to generate.\nIf not specified, will create a set of files in\n\
    the curent directory based on the //AssemblyInfo/\nAssemblyName values within\
    \ the documentation.\nUse '-' to write to standard output."
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- monodocs2slashdoc
