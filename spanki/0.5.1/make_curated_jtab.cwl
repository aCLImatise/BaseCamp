class: CommandLineTool
id: make_curated_jtab.cwl
inputs:
- id: i
  doc: BAM file name
  type: string
  inputBinding:
    prefix: -i
- id: j_list
  doc: "Curated junction list A table with >= 1 column, with column names It must\
    \ have a column named 'juncid' Any additional columns are carried over to the\
    \ new jtab "
  type: string
  inputBinding:
    prefix: -jlist
- id: j_tab
  doc: junctiontab (jtab) From first pass analysis of the BAM file supplied
  type: string
  inputBinding:
    prefix: -jtab
- id: a
  doc: Anchor size, default=8
  type: string
  inputBinding:
    prefix: -a
- id: o
  doc: Output directory, default='curated_juncs'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- make_curated_jtab
