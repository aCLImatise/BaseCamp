class: CommandLineTool
id: fastqStatsAndSubsample.cwl
inputs:
- id: in_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_stats
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: sample_size
  doc: '100000'
  type: string
  inputBinding:
    prefix: -sampleSize
- id: seed
  doc: seed for random number generator.  Default 0.
  type: string
  inputBinding:
    prefix: -seed
- id: small_ok
  doc: error if less than sampleSize reads.  out.fastq will be entire in.fastq
  type: string
  inputBinding:
    prefix: -smallOk
- id: json
  doc: .stats will be in json rather than text format
  type: boolean
  inputBinding:
    prefix: -json
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqStatsAndSubsample
