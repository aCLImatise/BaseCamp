class: CommandLineTool
id: pairtools_sort.cwl
inputs:
- id: in_output
  doc: "output pairs file. If the path ends with .gz or\n.lz4, the output is compressed\
    \ by pbgzip or lz4,\ncorrespondingly. By default, the output is printed\ninto\
    \ stdout."
  type: File?
  inputBinding:
    prefix: --output
- id: in_nproc
  doc: Number of processes to split the sorting work
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_tmpdir
  doc: Custom temporary folder for sorting intermediates.
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_memory
  doc: "The amount of memory used by default.  [default:\n2G]"
  type: long?
  inputBinding:
    prefix: --memory
- id: in_compress_program
  doc: "A binary to compress temporary sorted chunks. Must\ndecompress input when\
    \ the flag -d is provided.\nSuggested alternatives: gzip, lzop, lz4c, snzip. If\n\
    \"auto\", then use lz4c if available, and gzip\notherwise.  [default: auto]"
  type: long?
  inputBinding:
    prefix: --compress-program
- id: in_nproc_in
  doc: "Number of processes used by the auto-guessed input\ndecompressing command.\
    \  [default: 3]"
  type: long?
  inputBinding:
    prefix: --nproc-in
- id: in_nproc_out
  doc: "Number of processes used by the auto-guessed output\ncompressing command.\
    \  [default: 8]"
  type: long?
  inputBinding:
    prefix: --nproc-out
- id: in_cmd_in
  doc: "A command to decompress the input file. If\nprovided, fully overrides the\
    \ auto-guessed command.\nDoes not work with stdin. Must read input from\nstdin\
    \ and print output into stdout. EXAMPLE: pbgzip\n-dc -n 3"
  type: File?
  inputBinding:
    prefix: --cmd-in
- id: in_cmd_out
  doc: "A command to compress the output file. If provided,\nfully overrides the auto-guessed\
    \ command. Does not\nwork with stdout. Must read input from stdin and\nprint output\
    \ into stdout. EXAMPLE: pbgzip -c -n 8"
  type: File?
  inputBinding:
    prefix: --cmd-out
- id: in_pair_type_dot
  doc: 'PAIRS_PATH : input .pairs/.pairsam file. If the path ends with .gz or'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output pairs file. If the path ends with .gz or\n.lz4, the output is compressed\
    \ by pbgzip or lz4,\ncorrespondingly. By default, the output is printed\ninto\
    \ stdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- pairtools
- sort
