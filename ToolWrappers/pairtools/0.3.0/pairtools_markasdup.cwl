class: CommandLineTool
id: pairtools_markasdup.cwl
inputs:
- id: in_output
  doc: "output .pairsam file. If the path ends with .gz or\n.lz4, the output is pbgzip-/lz4c-compressed.\
    \ By\ndefault, the output is printed into stdout."
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
    \ auto-guessed command. Does not work\nwith stdin. Must read input from stdin\
    \ and print output\ninto stdout. EXAMPLE: pbgzip -dc -n 3"
  type: File?
  inputBinding:
    prefix: --cmd-in
- id: in_cmd_out
  doc: "A command to compress the output file. If provided,\nfully overrides the auto-guessed\
    \ command. Does not work\nwith stdout. Must read input from stdin and print\n\
    output into stdout. EXAMPLE: pbgzip -c -n 8"
  type: File?
  inputBinding:
    prefix: --cmd-out
- id: in_pairs_am_path
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output .pairsam file. If the path ends with .gz or\n.lz4, the output is pbgzip-/lz4c-compressed.\
    \ By\ndefault, the output is printed into stdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- pairtools
- markasdup
