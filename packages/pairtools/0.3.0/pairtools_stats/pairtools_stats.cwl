class: CommandLineTool
id: pairtools_stats.cwl
inputs:
- id: in_output
  doc: output stats tsv file.
  type: File
  inputBinding:
    prefix: --output
- id: in_merge
  doc: "If specified, merge multiple input stats files instead\nof calculating statistics\
    \ of a .pairs/.pairsam file.\nMerging is performed via summation of all overlapping\n\
    statistics. Non-overlapping statistics are appended to\nthe end of the file."
  type: boolean
  inputBinding:
    prefix: --merge
- id: in_nproc_in
  doc: "Number of processes used by the auto-guessed input\ndecompressing command.\
    \  [default: 3]"
  type: long
  inputBinding:
    prefix: --nproc-in
- id: in_nproc_out
  doc: "Number of processes used by the auto-guessed output\ncompressing command.\
    \  [default: 8]"
  type: long
  inputBinding:
    prefix: --nproc-out
- id: in_cmd_in
  doc: "A command to decompress the input file. If provided,\nfully overrides the\
    \ auto-guessed command. Does not work\nwith stdin. Must read input from stdin\
    \ and print output\ninto stdout. EXAMPLE: pbgzip -dc -n 3"
  type: File
  inputBinding:
    prefix: --cmd-in
- id: in_cmd_out
  doc: "A command to compress the output file. If provided,\nfully overrides the auto-guessed\
    \ command. Does not work\nwith stdout. Must read input from stdin and print\n\
    output into stdout. EXAMPLE: pbgzip -c -n 8"
  type: File
  inputBinding:
    prefix: --cmd-out
- id: in_merge_dot
  doc: The files with paths ending with .gz/.lz4 are decompressed by pbgzip/lz4c.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output stats tsv file.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- pairtools
- stats
