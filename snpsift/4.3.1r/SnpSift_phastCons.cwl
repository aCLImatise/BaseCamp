class: CommandLineTool
id: SnpSift_phastCons.cwl
inputs:
- id: input_file
  doc: ': VCF or BED file.'
  type: string
  inputBinding:
    position: 0
- id: bed
  doc: ': Input is a BED file.'
  type: boolean
  inputBinding:
    prefix: -bed
- id: extract
  doc: ": Extract sub intervals of at least 'num' bases, having a conservarion score\
    \ of at least 'minScore'. Only when input is a BED file."
  type: string
  inputBinding:
    prefix: -extract
- id: min_score
  doc: ": Only annotate is score is greater to 'num'. Default: 0.0"
  type: string
  inputBinding:
    prefix: -minScore
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- phastCons
