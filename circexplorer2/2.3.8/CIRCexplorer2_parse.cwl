class: CommandLineTool
id: ../../../CIRCexplorer2_parse.cwl
inputs:
- id: aligner_tophatfusion_star
  doc: Aligner (TopHat-Fusion, STAR, MapSplice, BWA, segemehl).
  type: string
  inputBinding:
    prefix: -t
- id: bed
  doc: 'Output file. [default: back_spliced_junction.bed]'
  type: string
  inputBinding:
    prefix: --bed
- id: pe
  doc: Parse paired-end alignment file (only for TopHat-Fusion). If this is set, then
    -f is set automatically.
  type: boolean
  inputBinding:
    prefix: --pe
- id: statistics_fragment_numbers
  doc: Statistics fragment numbers rather than read numbers.
  type: boolean
  inputBinding:
    prefix: -f
- id: fusion
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- CIRCexplorer2
- parse
