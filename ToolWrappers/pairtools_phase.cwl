class: CommandLineTool
id: pairtools_phase.cwl
inputs:
- id: in_output
  doc: "output file. If the path ends with .gz or .lz4,\nthe output is pbgzip-/lz4c-compressed.\
    \ By default,\nthe output is printed into stdout."
  type: File
  inputBinding:
    prefix: --output
- id: in_phase_suffixes
  doc: phase suffixes.
  type: string
  inputBinding:
    prefix: --phase-suffixes
- id: in_clean_output
  doc: drop all columns besides the standard ones and
  type: boolean
  inputBinding:
    prefix: --clean-output
- id: in_nproc_out
  doc: "Number of processes used by the auto-guessed\noutput compressing command.\
    \  [default: 8]"
  type: long
  inputBinding:
    prefix: --nproc-out
- id: in_cmd_in
  doc: "A command to decompress the input file. If\nprovided, fully overrides the\
    \ auto-guessed\ncommand. Does not work with stdin. Must read input\nfrom stdin\
    \ and print output into stdout. EXAMPLE:\npbgzip -dc -n 3"
  type: File
  inputBinding:
    prefix: --cmd-in
- id: in_cmd_out
  doc: "A command to compress the output file. If\nprovided, fully overrides the auto-guessed\n\
    command. Does not work with stdout. Must read\ninput from stdin and print output\
    \ into stdout.\nEXAMPLE: pbgzip -c -n 8"
  type: File
  inputBinding:
    prefix: --cmd-out
- id: in_phase_one_slash_two
  doc: --nproc-in INTEGER        Number of processes used by the auto-guessed input
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output file. If the path ends with .gz or .lz4,\nthe output is pbgzip-/lz4c-compressed.\
    \ By default,\nthe output is printed into stdout."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- pairtools
- phase
