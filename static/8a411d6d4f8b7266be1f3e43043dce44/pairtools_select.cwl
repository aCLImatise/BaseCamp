class: CommandLineTool
id: pairtools_select.cwl
inputs:
- id: in_output
  doc: "output file. If the path ends with .gz or\n.lz4, the output is pbgzip-/lz4c-compressed.\n\
    By default, the output is printed into\nstdout."
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_rest
  doc: "output file for pairs of other types.  If\nthe path ends with .gz or .lz4,\
    \ the output\nis pbgzip-/lz4c-compressed. By default, such\npairs are dropped."
  type: File?
  inputBinding:
    prefix: --output-rest
- id: in_send_comments_to
  doc: "[selected|rest|both|none]\nWhich of the outputs should receive header\nand\
    \ comment lines  [default: both]"
  type: boolean?
  inputBinding:
    prefix: --send-comments-to
- id: in_chrom_subset
  doc: "A path to a chromosomes file (tab-separated,\n1st column contains chromosome\
    \ names)\ncontaining a chromosome subset of interest.\nIf provided, additionally\
    \ filter pairs with\nboth sides originating from the provided\nsubset of chromosomes.\
    \ This operation\nmodifies the #chromosomes: and #chromsize:\nheader fields accordingly."
  type: File?
  inputBinding:
    prefix: --chrom-subset
- id: in_startup_code
  doc: "An auxiliary code to execute before\nfiltering. Use to define functions that\
    \ can\nbe evaluated in the CONDITION statement"
  type: string?
  inputBinding:
    prefix: --startup-code
- id: in_type_cast
  doc: "...  Cast a given column to a given type. By\ndefault, only pos and mapq are\
    \ cast to int,\nother columns are kept as str. Provide as -t\n<column_name> <type>,\
    \ e.g. -t read_len1 int.\nMultiple entries are allowed."
  type: long?
  inputBinding:
    prefix: --type-cast
- id: in_nproc_in
  doc: "Number of processes used by the auto-guessed\ninput decompressing command.\
    \  [default: 3]"
  type: long?
  inputBinding:
    prefix: --nproc-in
- id: in_nproc_out
  doc: "Number of processes used by the auto-guessed\noutput compressing command.\
    \  [default: 8]"
  type: long?
  inputBinding:
    prefix: --nproc-out
- id: in_cmd_in
  doc: "A command to decompress the input file. If\nprovided, fully overrides the\
    \ auto-guessed\ncommand. Does not work with stdin. Must read\ninput from stdin\
    \ and print output into\nstdout. EXAMPLE: pbgzip -dc -n 3"
  type: File?
  inputBinding:
    prefix: --cmd-in
- id: in_cmd_out
  doc: "A command to compress the output file. If\nprovided, fully overrides the auto-guessed\n\
    command. Does not work with stdout. Must\nread input from stdin and print output\
    \ into\nstdout. EXAMPLE: pbgzip -c -n 8"
  type: File?
  inputBinding:
    prefix: --cmd-out
- id: in_quote
  doc: CONDITION with single quotes, and use double quotes for string
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output file. If the path ends with .gz or\n.lz4, the output is pbgzip-/lz4c-compressed.\n\
    By default, the output is printed into\nstdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_output_rest
  doc: "output file for pairs of other types.  If\nthe path ends with .gz or .lz4,\
    \ the output\nis pbgzip-/lz4c-compressed. By default, such\npairs are dropped."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_rest)
hints: []
cwlVersion: v1.1
baseCommand:
- pairtools
- select
