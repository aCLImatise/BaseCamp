class: CommandLineTool
id: ../../../oncogemini.cwl
inputs:
- id: annotation_dir
  doc: 'Path to the annotation database. This argument is optional and if given will
    take precedence over the default location stored in the oncogemini config file.
    (default: None)'
  type: string
  inputBinding:
    prefix: --annotation-dir
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- oncogemini
