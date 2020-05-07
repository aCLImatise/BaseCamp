class: CommandLineTool
id: rbt_collapse_reads_to_fragments_help_For_information.cwl
inputs:
- id: more
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: information
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: try
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
- collapse-reads-to-fragments
- help
- For
- information
