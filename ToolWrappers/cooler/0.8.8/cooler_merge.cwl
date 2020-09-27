class: CommandLineTool
id: cooler_merge.cwl
inputs:
- id: in_chunksize
  doc: Size of the merge buffer in number of pixel table
  type: long
  inputBinding:
    prefix: --chunksize
- id: in_field
  doc: "Specify the names of value columns to merge as\n'<name>'. Repeat the `--field`\
    \ option for each one.\nUse '<name>,dtype=<dtype>' to specify the dtype.\nInclude\
    \ ',agg=<agg>' to specify an aggregation\nfunction different from 'sum'."
  type: string
  inputBinding:
    prefix: --field
- id: in_output_dot
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cooler
- merge
