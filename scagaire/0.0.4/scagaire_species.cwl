class: CommandLineTool
id: ../../../scagaire_species.cwl
inputs:
- id: overview
  doc: 'Print out an overview of the database (default: False)'
  type: boolean
  inputBinding:
    prefix: --overview
- id: detailed
  doc: 'Turn on detailed output (default: False)'
  type: boolean
  inputBinding:
    prefix: --detailed
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
- scagaire_species
