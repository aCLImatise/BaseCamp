class: CommandLineTool
id: pairtools_merge.cwl
inputs:
- id: output
  doc: output file. If the path ends with .gz/.lz4, the output is compressed by pbgzip/lz4c.
    By default, the output is printed into stdout.
  type: string
  inputBinding:
    prefix: --output
- id: max_n_merge
  doc: 'The maximal number of inputs merged at once. For more, store merged intermediates
    in temporary files.  [default: 8]'
  type: long
  inputBinding:
    prefix: --max-nmerge
- id: tmpdir
  doc: Custom temporary folder for merged intermediates.
  type: string
  inputBinding:
    prefix: --tmpdir
- id: memory
  doc: 'The amount of memory used by default.  [default: 2G]'
  type: string
  inputBinding:
    prefix: --memory
- id: compress_program
  doc: 'A binary to compress temporary merged chunks. Must decompress input when the
    flag -d is provided. Suggested alternatives: lz4c, gzip, lzop, snzip. NOTE: fails
    silently if the command syntax is wrong.   [default: ]'
  type: string
  inputBinding:
    prefix: --compress-program
- id: nproc
  doc: 'Number of threads for merging.  [default: 8]'
  type: long
  inputBinding:
    prefix: --nproc
- id: nproc_in
  doc: 'Number of processes used by the auto-guessed input decompressing command.  [default:
    1]'
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
  doc: 'A command to decompress the input. If provided, fully overrides the auto-guessed
    command. Does not work with stdin. Must read input from stdin and print output
    into stdout. EXAMPLE: pbgzip -dc -n 3'
  type: string
  inputBinding:
    prefix: --cmd-in
- id: cmd_out
  doc: 'A command to compress the output. If provided, fully overrides the auto-guessed
    command. Does not work with stdout. Must read input from stdin and print output
    into stdout. EXAMPLE: pbgzip -c -n 8'
  type: string
  inputBinding:
    prefix: --cmd-out
outputs: []
cwlVersion: v1.1
baseCommand:
- pairtools
- merge
