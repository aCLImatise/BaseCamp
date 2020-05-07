class: CommandLineTool
id: filter_gff_overlap.cwl
inputs:
- id: size
  doc: 'Size of the overlap that triggers the filter [default: 100]'
  type: long
  inputBinding:
    prefix: --size
- id: sorted
  doc: If the GFF file is sorted (all of a sequence annotations are contiguos and
    sorted by strand) can use less memory, `sort -s -k 1,1 -k 7,7` can be used
  type: boolean
  inputBinding:
    prefix: --sorted
- id: choose_func
  doc: Function to choose between two overlapping annotations
  type: string
  inputBinding:
    prefix: --choose-func
- id: sort_attr
  doc: '[bitscore|identity|length] Attribute to sort annotations before filtering
    (default bitscore)  [default: bitscore]'
  type: boolean
  inputBinding:
    prefix: --sort-attr
- id: progress
  doc: Shows Progress Bar
  type: boolean
  inputBinding:
    prefix: --progress
outputs: []
cwlVersion: v1.1
baseCommand:
- filter-gff
- overlap
