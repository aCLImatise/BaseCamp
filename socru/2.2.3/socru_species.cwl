class: CommandLineTool
id: socru_species.cwl
inputs:
- id: debug
  doc: 'Turn on debugging (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: 'Turn on verbose output (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- socru_species
