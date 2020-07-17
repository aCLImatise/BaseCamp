class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/socru_species.cwl
inputs:
- id: extended
  doc: 'Extended information about the species databases (default: False)'
  type: boolean
  inputBinding:
    prefix: --extended
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
