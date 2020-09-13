class: CommandLineTool
id: ../../../mash_info.cwl
inputs:
- id: in_only_show_header
  doc: Only show header info. Do not list each sketch. Incompatible with -d,
  type: boolean
  inputBinding:
    prefix: -H
- id: in_cdot
  doc: ''
  type: string
  inputBinding:
    prefix: -c.
- id: in_show_count_histograms
  doc: "Show hash count histograms for each sketch. Incompatible with -d, -H\nand\
    \ -t."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_option
  doc: Description (range) [default]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mash
- info
