class: CommandLineTool
id: easel_downsample.cwl
inputs:
- id: in_sequence_sampling_infile
  doc: ': sequence sampling: <infile> is file or stream of seqs'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_big_sequence_sample
  doc: ': big sequence sample: <infile> is (seekable) seq file'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_seed
  doc: ': set random number generator seed  [0]'
  type: long
  inputBinding:
    prefix: --seed
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: in_m
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- easel
- downsample
