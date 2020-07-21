class: CommandLineTool
id: ../../../qsignature.cwl
inputs:
- id: disable_at_files
  doc: prevent further argument file expansion
  type: boolean
  inputBinding:
    prefix: -disable-@files
- id: enable_preview
  doc: allow classes to depend on preview features of this release
  type: boolean
  inputBinding:
    prefix: --enable-preview
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: main_class
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: args_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- qsignature
