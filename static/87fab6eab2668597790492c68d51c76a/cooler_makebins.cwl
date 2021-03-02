class: CommandLineTool
id: cooler_makebins.cwl
inputs:
- id: in_out
  doc: Output file (defaults to stdout)
  type: File?
  inputBinding:
    prefix: --out
- id: in_header
  doc: "Print the header of column names as the first row.\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_rel_ids
  doc: "[0|1]  Include a column of relative bin IDs for each\nchromosome. Choose whether\
    \ to report them as 0- or\n1-based."
  type: boolean?
  inputBinding:
    prefix: --rel-ids
- id: in_order_dot
  doc: 'BINSIZE : Resolution (bin size) in base pairs <int>.'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output file (defaults to stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- cooler
- makebins
