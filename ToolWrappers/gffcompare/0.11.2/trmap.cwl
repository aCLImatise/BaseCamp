class: CommandLineTool
id: trmap.cwl
inputs:
- id: in_write_output_outfile
  doc: write output to <outfile> instead of stdout
  type: string
  inputBinding:
    prefix: -o
- id: in_report_percentages_withoutclassification
  doc: "report only simple reference overlap percentages, without\nclassification\
    \ (one line per query)"
  type: boolean
  inputBinding:
    prefix: -S
- id: in_strict_match
  doc: ": when intron chains match, the '=' overlap code is assigned\nwhen all exons\
    \ also match, otherwise assign the '~' code\n"
  type: boolean
  inputBinding:
    prefix: --strict-match
- id: in_ref_gff
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- trmap
