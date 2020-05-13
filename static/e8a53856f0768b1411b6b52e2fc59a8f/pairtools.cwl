class: CommandLineTool
id: pairtools.cwl
inputs:
- id: post_mortem
  doc: Post mortem debugging
  type: boolean
  inputBinding:
    prefix: --post-mortem
- id: output_profile
  doc: Profile performance with Python cProfile and dump the statistics into a binary
    file
  type: string
  inputBinding:
    prefix: --output-profile
outputs: []
cwlVersion: v1.1
baseCommand:
- pairtools
