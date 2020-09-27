class: CommandLineTool
id: fastqAnalyze.cwl
inputs:
- id: in_solexa
  doc: input QV is solexa
  type: boolean
  inputBinding:
    prefix: -solexa
- id: in_illumina
  doc: input QV is illumina
  type: boolean
  inputBinding:
    prefix: -illumina
- id: in_sanger
  doc: input QV is sanger
  type: boolean
  inputBinding:
    prefix: -sanger
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_stats
  doc: ''
  type: boolean
  inputBinding:
    prefix: -stats
- id: in_output_dot
  doc: 'For conversion, you can force the input QV type with:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastqAnalyze
