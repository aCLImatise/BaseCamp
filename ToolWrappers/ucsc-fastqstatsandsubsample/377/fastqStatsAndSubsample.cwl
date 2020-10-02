class: CommandLineTool
id: fastqStatsAndSubsample.cwl
inputs:
- id: in_sample_size
  doc: '- default 100000'
  type: long
  inputBinding:
    prefix: -sampleSize
- id: in_seed
  doc: '- Use given seed for random number generator.  Default 0.'
  type: long
  inputBinding:
    prefix: -seed
- id: in_small_ok
  doc: '- Not an error if less than sampleSize reads.  out.fastq will be entire in.fastq'
  type: boolean
  inputBinding:
    prefix: -smallOk
- id: in_json
  doc: '- out.stats will be in json rather than text format'
  type: boolean
  inputBinding:
    prefix: -json
- id: in_in_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_stats
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastqStatsAndSubsample
