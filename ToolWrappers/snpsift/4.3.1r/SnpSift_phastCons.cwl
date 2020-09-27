class: CommandLineTool
id: SnpSift_phastCons.cwl
inputs:
- id: in_bed
  doc: ': Input is a BED file.'
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_extract
  doc: ": Extract sub intervals of at least 'num' bases, having a conservarion score\
    \ of at least 'minScore'. Only when input is a BED file."
  type: long
  inputBinding:
    prefix: -extract
- id: in_min_score
  doc: ": Only annotate is score is greater to 'num'. Default: 0.0"
  type: long
  inputBinding:
    prefix: -minScore
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_input_file
  doc: ': VCF or BED file.'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SnpSift
- phastCons
