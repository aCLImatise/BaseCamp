class: CommandLineTool
id: pairtools_sort.cwl
inputs:
- id: output
  doc: output pairs file. If the path ends with .gz or .lz4, the output is compressed
    by pbgzip or lz4, correspondingly. By default, the output is printed into stdout.
  type: string
  inputBinding:
    prefix: --output
- id: nproc
  doc: 'Number of processes to split the sorting work between.  [default: 8]'
  type: long
  inputBinding:
    prefix: --nproc
- id: tmpdir
  doc: Custom temporary folder for sorting intermediates.
  type: string
  inputBinding:
    prefix: --tmpdir
- id: memory
  doc: 'The amount of memory used by default.  [default: 2G]'
  type: string
  inputBinding:
    prefix: --memory
- id: compress_program
  doc: 'A binary to compress temporary sorted chunks. Must decompress input when the
    flag -d is provided. Suggested alternatives: gzip, lzop, lz4c, snzip. If "auto",
    then use lz4c if available, and gzip otherwise.  [default: auto]'
  type: string
  inputBinding:
    prefix: --compress-program
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
- sort
