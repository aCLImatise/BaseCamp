class: CommandLineTool
id: bp_composite_LD.pl.cwl
inputs:
- id: in_format
  doc: format (prettybase or CSV)
  type: string?
  inputBinding:
    prefix: --format
- id: in_sort_by_ld
  doc: see data sorted by LD instead of just all the site1/site2
  type: long?
  inputBinding:
    prefix: --sortbyld
- id: in_out
  doc: filename, otherwise will print to STDOUT
  type: File?
  inputBinding:
    prefix: --out
- id: in_no_convert
  doc: (applicable for prettybase format file only) if specified
  type: boolean?
  inputBinding:
    prefix: --noconvert
- id: in_description
  doc: This a script which allows an easy way to calculate composite LD.
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: -i or --in filename
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bp_composite_LD.pl
