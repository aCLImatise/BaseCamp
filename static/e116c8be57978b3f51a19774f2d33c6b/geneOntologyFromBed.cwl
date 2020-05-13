class: CommandLineTool
id: geneOntologyFromBed.py.cwl
inputs:
- id: mode
  doc: choose mode
  type: string
  inputBinding:
    prefix: --mode
outputs: []
cwlVersion: v1.1
baseCommand:
- geneOntologyFromBed.py
