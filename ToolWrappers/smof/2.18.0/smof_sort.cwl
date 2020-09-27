class: CommandLineTool
id: smof_sort.cwl
inputs:
- id: in_regex
  doc: sort by single regex capture
  type: string
  inputBinding:
    prefix: --regex
- id: in_reverse
  doc: reverse sort
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_numeric_sort
  doc: numeric sort
  type: boolean
  inputBinding:
    prefix: --numeric-sort
- id: in_length_sort
  doc: sort by sequence length
  type: boolean
  inputBinding:
    prefix: --length-sort
- id: in_random_sort
  doc: randomly sort sequences
  type: boolean
  inputBinding:
    prefix: --random-sort
- id: in_key
  doc: Key to sort on (column number or tag)
  type: long
  inputBinding:
    prefix: --key
- id: in_field_separator
  doc: "The field separator (default: '|')"
  type: string
  inputBinding:
    prefix: --field-separator
- id: in_pair_separator
  doc: "The separator between a tag and value (default: '=')\n"
  type: string
  inputBinding:
    prefix: --pair-separator
- id: in_input
  doc: input fasta sequence (default = stdin)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- smof
- sort
