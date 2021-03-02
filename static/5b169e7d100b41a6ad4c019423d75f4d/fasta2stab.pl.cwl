class: CommandLineTool
id: fasta2stab.pl.cwl
inputs:
- id: in_extract_line_num
  doc: ": Extract only line <num> of the fasta from each sequence\n(useful for parsing\
    \ alignments given in fasta)"
  type: long?
  inputBinding:
    prefix: -l
- id: in_ignore_n
  doc: ':  Do not print sequences that contain N.'
  type: boolean?
  inputBinding:
    prefix: -ignore_N
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasta2stab.pl
