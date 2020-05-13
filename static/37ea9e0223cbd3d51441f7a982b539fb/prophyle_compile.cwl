class: CommandLineTool
id: prophyle_compile.cwl
inputs:
- id: c
  doc: clean files instead of compiling
  type: boolean
  inputBinding:
    prefix: -C
- id: f
  doc: force recompilation
  type: boolean
  inputBinding:
    prefix: -F
- id: p
  doc: run compilation in parallel
  type: boolean
  inputBinding:
    prefix: -P
- id: c
  doc: '[STR [STR ...]]  advanced configuration (a JSON dictionary)'
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- prophyle
- compile
