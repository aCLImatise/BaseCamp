class: CommandLineTool
id: ../../../tag_sum.cwl
inputs:
- id: in_gff_three
  doc: input file
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tag
- sum
