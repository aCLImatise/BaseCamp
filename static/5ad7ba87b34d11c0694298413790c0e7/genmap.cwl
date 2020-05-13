class: CommandLineTool
id: genmap.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: copyright
  doc: Display long copyright information.
  type: boolean
  inputBinding:
    prefix: --copyright
outputs: []
cwlVersion: v1.1
baseCommand:
- genmap
