class: CommandLineTool
id: je_markdupes.cwl
inputs:
- id: mark_duplicates_with_molecular_code
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- je
- markdupes
