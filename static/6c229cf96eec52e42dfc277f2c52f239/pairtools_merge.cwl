class: CommandLineTool
id: pairtools_merge.cwl
inputs:
- id: in_output
  doc: "output file. If the path ends with .gz/.lz4, the\noutput is compressed by\
    \ pbgzip/lz4c. By default,\nthe output is printed into stdout."
  type: File?
  inputBinding:
    prefix: --output
- id: in_max_n_merge
  doc: "The maximal number of inputs merged at once. For\nmore, store merged intermediates\
    \ in temporary\nfiles.  [default: 8]"
  type: long?
  inputBinding:
    prefix: --max-nmerge
- id: in_tmpdir
  doc: Custom temporary folder for merged intermediates.
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_memory
  doc: "The amount of memory used by default.  [default:\n2G]"
  type: long?
  inputBinding:
    prefix: --memory
- id: in_compress_program
  doc: "A binary to compress temporary merged chunks. Must\ndecompress input when\
    \ the flag -d is provided.\nSuggested alternatives: lz4c, gzip, lzop, snzip.\n\
    NOTE: fails silently if the command syntax is\nwrong.   [default: ]"
  type: long?
  inputBinding:
    prefix: --compress-program
- id: in_nproc
  doc: 'Number of threads for merging.  [default: 8]'
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_nproc_in
  doc: "Number of processes used by the auto-guessed input\ndecompressing command.\
    \  [default: 1]"
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
  doc: "A command to decompress the input. If provided,\nfully overrides the auto-guessed\
    \ command. Does not\nwork with stdin. Must read input from stdin and\nprint output\
    \ into stdout. EXAMPLE: pbgzip -dc -n 3"
  type: long?
  inputBinding:
    prefix: --cmd-in
- id: in_cmd_out
  doc: "A command to compress the output. If provided,\nfully overrides the auto-guessed\
    \ command. Does not\nwork with stdout. Must read input from stdin and\nprint output\
    \ into stdout. EXAMPLE: pbgzip -c -n 8"
  type: long?
  inputBinding:
    prefix: --cmd-out
- id: in_pairs_path
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output file. If the path ends with .gz/.lz4, the\noutput is compressed by\
    \ pbgzip/lz4c. By default,\nthe output is printed into stdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- pairtools
- merge
