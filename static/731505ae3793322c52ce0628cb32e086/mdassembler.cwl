class: CommandLineTool
id: mdassembler.cwl
inputs:
- id: in_format
  doc: "The documentation FORMAT used in DIRECTORIES.\nValid formats include:\necma\n\
    ecmaspec\nerror\nhb\nman\nsimple\nxhtml\nIf not specified, the default format\
    \ is `ecma'."
  type: string?
  inputBinding:
    prefix: --format
- id: in_out
  doc: "Provides the output file prefix; the files PREFIX.\nzip and PREFIX.tree will\
    \ be created.\nIf not specified, `tree' is the default PREFIX."
  type: File?
  inputBinding:
    prefix: --out
- id: in_drop_ns
  doc: "The namespace that has been dropped from this\nversion of the assembly."
  type: string?
  inputBinding:
    prefix: --dropns
- id: in_n_types
  doc: "Replace references to native types with their\noriginal types."
  type: boolean?
  inputBinding:
    prefix: --ntypes
- id: in_mdoc
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_assemble
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Provides the output file prefix; the files PREFIX.\nzip and PREFIX.tree will\
    \ be created.\nIf not specified, `tree' is the default PREFIX."
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- mdassembler
