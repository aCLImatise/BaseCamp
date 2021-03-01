class: CommandLineTool
id: pairtools_flip.cwl
inputs:
- id: in_chrom_s_path
  doc: "Chromosome order used to flip interchromosomal\nmates: path to a chromosomes\
    \ file (e.g. UCSC\nchrom.sizes or similar) whose first column lists\nscaffold\
    \ names. Any scaffolds not listed will be\nordered lexicographically following\
    \ the names\nprovided.  [required]"
  type: File?
  inputBinding:
    prefix: --chroms-path
- id: in_output
  doc: "output file. If the path ends with .gz or .lz4, the\noutput is pbgzip-/lz4c-compressed.\
    \ By default, the\noutput is printed into stdout."
  type: File?
  inputBinding:
    prefix: --output
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
  doc: "A command to decompress the input file. If provided,\nfully overrides the\
    \ auto-guessed command. Does not\nwork with stdin. Must read input from stdin\
    \ and\nprint output into stdout. EXAMPLE: pbgzip -dc -n 3"
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
  doc: "output file. If the path ends with .gz or .lz4, the\noutput is pbgzip-/lz4c-compressed.\
    \ By default, the\noutput is printed into stdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- pairtools
- flip
