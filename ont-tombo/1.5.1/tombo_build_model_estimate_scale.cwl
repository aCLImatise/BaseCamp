class: CommandLineTool
id: ../../../tombo_build_model_estimate_scale.cwl
inputs:
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: fast_fives_basedir
  doc: Directory containing fast5 files. All files ending in "fast5" found recursively
    within this base directory will be processed.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tombo
- build_model
- estimate_scale
