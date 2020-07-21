class: CommandLineTool
id: ../../../ribo_select.cwl
inputs:
- id: output
  doc: 'output directory;default: None'
  type: string
  inputBinding:
    prefix: --output
- id: feature
  doc: 'Feature, rRNA or RRNA; default: rRNA'
  type: string
  inputBinding:
    prefix: --feature
- id: specific_features
  doc: 'colon:separated -- specific features; default: 16S:23S:5S'
  type: string
  inputBinding:
    prefix: --specific_features
- id: clobber
  doc: 'overwrite previous output files: default: False'
  type: boolean
  inputBinding:
    prefix: --clobber
- id: clusters
  doc: number of rDNA clusters;if submitting multiple records, must be a colon:separated
    list whose length matches number of genbank records. Default is inferred from
    specific feature with fewest hits
  type: string
  inputBinding:
    prefix: --clusters
- id: verbosity
  doc: '1 = debug(), 2 = info(), 3 = warning(), 4 = error() and 5 = critical(); default:
    2'
  type: string
  inputBinding:
    prefix: --verbosity
- id: debug
  doc: Enable debug messages
  type: boolean
  inputBinding:
    prefix: --debug
- id: genbank_genome
  doc: Genbank file (WITH SEQUENCE)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- ribo
- select
