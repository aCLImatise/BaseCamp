class: CommandLineTool
id: ../../../pairtools_sample.cwl
inputs:
- id: output
  doc: output file. If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed.
    By default, the output is printed into stdout.
  type: string
  inputBinding:
    prefix: --output
- id: seed
  doc: the seed of the random number generator.
  type: long
  inputBinding:
    prefix: --seed
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
- id: fraction
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pairs_path
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pairtools
- sample
