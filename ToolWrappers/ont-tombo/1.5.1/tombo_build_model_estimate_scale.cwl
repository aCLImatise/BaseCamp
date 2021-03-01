class: CommandLineTool
id: tombo_build_model_estimate_scale.cwl
inputs:
- id: in_quiet
  doc: Don't print status information.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_fast_fives_basedir
  doc: "Directory containing fast5 files. All files ending in\n\"fast5\" found recursively\
    \ within this base directory will be\nprocessed."
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tombo
- build_model
- estimate_scale
