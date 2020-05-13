class: CommandLineTool
id: je_clip.cwl
inputs:
- id: je_clipper
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- je
- clip
