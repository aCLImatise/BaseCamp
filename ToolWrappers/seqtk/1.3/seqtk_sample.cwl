class: CommandLineTool
id: seqtk_sample.cwl
inputs:
- id: in_rng_seed
  doc: RNG seed [11]
  type: long?
  inputBinding:
    prefix: -s
- id: in_pass_mode_slow
  doc: '2-pass mode: twice as slow but with much reduced memory'
  type: boolean?
  inputBinding:
    prefix: '-2'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seqtk
- sample
