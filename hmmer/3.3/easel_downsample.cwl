class: CommandLineTool
id: easel_downsample.cwl
inputs:
- id: s
  doc: ': sequence sampling: <infile> is file or stream of seqs'
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: ': big sequence sample: <infile> is (seekable) seq file'
  type: boolean
  inputBinding:
    prefix: -S
- id: seed
  doc: ': set random number generator seed  [0]'
  type: string
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- easel
- downsample
