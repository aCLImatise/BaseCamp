class: CommandLineTool
id: smof_sort.cwl
inputs:
- id: input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
- id: regex
  doc: sort by single regex capture
  type: string
  inputBinding:
    prefix: --regex
- id: reverse
  doc: reverse sort
  type: boolean
  inputBinding:
    prefix: --reverse
- id: numeric_sort
  doc: numeric sort
  type: boolean
  inputBinding:
    prefix: --numeric-sort
- id: length_sort
  doc: sort by sequence length
  type: boolean
  inputBinding:
    prefix: --length-sort
- id: random_sort
  doc: randomly sort sequences
  type: boolean
  inputBinding:
    prefix: --random-sort
- id: key
  doc: Key to sort on (column number or tag)
  type: string
  inputBinding:
    prefix: --key
- id: field_separator
  doc: "The field separator (default: '|')"
  type: string
  inputBinding:
    prefix: --field-separator
- id: pair_separator
  doc: "The separator between a tag and value (default: '=')"
  type: string
  inputBinding:
    prefix: --pair-separator
outputs: []
cwlVersion: v1.1
baseCommand:
- smof
- sort
