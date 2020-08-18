class: CommandLineTool
id: ../../../fastqStatsAndSubsample.cwl
inputs:
- id: sample_size
  doc: '- default 100000'
  type: string
  inputBinding:
    prefix: -sampleSize
- id: seed
  doc: '- Use given seed for random number generator.  Default 0.'
  type: string
  inputBinding:
    prefix: -seed
- id: small_ok
  doc: '- Not an error if less than sampleSize reads.  out.fastq will be entire in.fastq'
  type: boolean
  inputBinding:
    prefix: -smallOk
- id: json
  doc: '- out.stats will be in json rather than text format'
  type: boolean
  inputBinding:
    prefix: -json
- id: in_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_dot_stats
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqStatsAndSubsample
