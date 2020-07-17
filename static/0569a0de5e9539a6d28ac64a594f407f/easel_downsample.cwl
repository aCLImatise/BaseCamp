class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/easel_downsample.cwl
inputs:
- id: sequence_sampling_infile
  doc: ': sequence sampling: <infile> is file or stream of seqs'
  type: boolean
  inputBinding:
    prefix: -s
- id: big_sequence_sample
  doc: ': big sequence sample: <infile> is (seekable) seq file'
  type: boolean
  inputBinding:
    prefix: -S
- id: seed
  doc: ': set random number generator seed  [0]'
  type: string
  inputBinding:
    prefix: --seed
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- easel
- downsample
