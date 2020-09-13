class: CommandLineTool
id: ../../../pairtools.cwl
inputs:
- id: in_post_mortem
  doc: Post mortem debugging
  type: boolean
  inputBinding:
    prefix: --post-mortem
- id: in_output_profile
  doc: "Profile performance with Python cProfile and dump the\nstatistics into a binary\
    \ file"
  type: File
  inputBinding:
    prefix: --output-profile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pairtools
