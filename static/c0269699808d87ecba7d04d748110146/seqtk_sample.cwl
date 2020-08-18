class: CommandLineTool
id: ../../../seqtk_sample.cwl
inputs:
- id: rng_seed
  doc: RNG seed [11]
  type: long
  inputBinding:
    prefix: -s
- id: pass_mode_slow
  doc: '2-pass mode: twice as slow but with much reduced memory'
  type: boolean
  inputBinding:
    prefix: '-2'
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- sample
