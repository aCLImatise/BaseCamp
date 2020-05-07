class: CommandLineTool
id: GapMerger.cwl
inputs:
- id: gaps
  doc: '(1 arg) :    FASTA file of filled gaps'
  type: boolean
  inputBinding:
    prefix: -gaps
- id: contigs
  doc: '(1 arg) :    FASTA file of contigs'
  type: boolean
  inputBinding:
    prefix: -contigs
- id: scaffolds
  doc: '(1 arg) :    FASTA file of merged scaffolds'
  type: boolean
  inputBinding:
    prefix: -scaffolds
- id: nb_cores
  doc: "(1 arg) :    number of cores  [default '0']"
  type: boolean
  inputBinding:
    prefix: -nb-cores
- id: verbose
  doc: "(1 arg) :    verbosity level  [default '1']"
  type: boolean
  inputBinding:
    prefix: -verbose
- id: version
  doc: '(0 arg) :    version'
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- GapMerger
