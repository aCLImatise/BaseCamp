class: CommandLineTool
id: pairtools_split.cwl
inputs:
- id: from
  doc: stdin.
  type: string
  inputBinding:
    position: 0
- id: output_pairs
  doc: output pairs file. If the path ends with .gz or .lz4, the output is pbgzip-/lz4c-compressed.
    If -, pairs are printed to stdout. If not specified, pairs are dropped.
  type: string
  inputBinding:
    prefix: --output-pairs
- id: output_sam
  doc: output sam file. If the path ends with .bam, the output is compressed into
    a bam file. If -, sam entries are printed to stdout. If not specified, sam entries
    are dropped.
  type: string
  inputBinding:
    prefix: --output-sam
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
- split
