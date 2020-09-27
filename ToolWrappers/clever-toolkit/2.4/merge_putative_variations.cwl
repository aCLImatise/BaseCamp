class: CommandLineTool
id: merge_putative_variations.cwl
inputs:
- id: in_arg_minimal_weight
  doc: '[ --min_weight ] arg (=1) Minimal weight to be printed (default=1).'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_minimum_length
  doc: '[ --min_length ] arg (=0) Minimum length.'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_sort_weight_default
  doc: '[ --sort_by_weight ]      Sort by weight (default: by position)'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_arg_filter_file
  doc: '[ --filter ] arg          Filter file; only retain deletions in the given'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_arg_input_file
  doc: "[ --input_file ] arg      Input file with variants (equivalent to\nspecifying\
    \ input files as positional arguments).\n"
  type: boolean
  inputBinding:
    prefix: -I
- id: in_file_dot
  doc: -a [ --all_from_filter ]     Output all variations in the given filter set.
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merge-putative-variations
