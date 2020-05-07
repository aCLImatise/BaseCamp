class: CommandLineTool
id: fasta2stab.pl.bak.cwl
inputs:
- id: l
  doc: ': Extract only line <num> of the fasta from each sequence (useful for parsing
    alignments given in fasta)'
  type: string
  inputBinding:
    prefix: -l
- id: ignore_n
  doc: ':  Do not print sequences that contain N.'
  type: boolean
  inputBinding:
    prefix: -ignore_N
outputs: []
cwlVersion: v1.1
baseCommand:
- fasta2stab.pl.bak
