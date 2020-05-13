class: CommandLineTool
id: pairtools_select.cwl
inputs:
- id: output
  doc: output file. If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed.
    By default, the output is printed into stdout.
  type: string
  inputBinding:
    prefix: --output
- id: output_rest
  doc: output file for pairs of other types.  If the path ends with .gz or .lz4, the
    output is pbgzip-/lz4c-compressed. By default, such pairs are dropped.
  type: string
  inputBinding:
    prefix: --output-rest
- id: send_comments_to
  doc: '[selected|rest|both|none] Which of the outputs should receive header and comment
    lines  [default: both]'
  type: boolean
  inputBinding:
    prefix: --send-comments-to
- id: chrom_subset
  doc: 'A path to a chromosomes file (tab-separated, 1st column contains chromosome
    names) containing a chromosome subset of interest. If provided, additionally filter
    pairs with both sides originating from the provided subset of chromosomes. This
    operation modifies the #chromosomes: and #chromsize: header fields accordingly.'
  type: string
  inputBinding:
    prefix: --chrom-subset
- id: startup_code
  doc: An auxiliary code to execute before filtering. Use to define functions that
    can be evaluated in the CONDITION statement
  type: string
  inputBinding:
    prefix: --startup-code
- id: type_cast
  doc: '...  Cast a given column to a given type. By default, only pos and mapq are
    cast to int, other columns are kept as str. Provide as -t <column_name> <type>,
    e.g. -t read_len1 int. Multiple entries are allowed.'
  type: string
  inputBinding:
    prefix: --type-cast
- id: nproc_in
  doc: 'Number of processes used by the auto-guessed input decompressing command.  [default:
    3]'
  type: long
  inputBinding:
    prefix: --nproc-in
- id: nproc_out
  doc: 'Number of processes used by the auto-guessed output compressing command.  [default:
    8]'
  type: long
  inputBinding:
    prefix: --nproc-out
- id: cmd_in
  doc: 'A command to decompress the input file. If provided, fully overrides the auto-guessed
    command. Does not work with stdin. Must read input from stdin and print output
    into stdout. EXAMPLE: pbgzip -dc -n 3'
  type: string
  inputBinding:
    prefix: --cmd-in
- id: cmd_out
  doc: 'A command to compress the output file. If provided, fully overrides the auto-guessed
    command. Does not work with stdout. Must read input from stdin and print output
    into stdout. EXAMPLE: pbgzip -c -n 8'
  type: string
  inputBinding:
    prefix: --cmd-out
outputs: []
cwlVersion: v1.1
baseCommand:
- pairtools
- select
