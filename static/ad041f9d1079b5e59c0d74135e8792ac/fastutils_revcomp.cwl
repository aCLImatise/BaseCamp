class: CommandLineTool
id: fastutils_revcomp.cwl
inputs:
- id: in
  doc: input file in fasta/q format [stdin]
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: output file [stdout]
  type: string
  inputBinding:
    prefix: --out
- id: linewidth
  doc: size of lines in fasta output. Use 0 for no wrapping [0]
  type: long
  inputBinding:
    prefix: --lineWidth
- id: fast_q
  doc: output reads in fastq format if possible
  type: boolean
  inputBinding:
    prefix: --fastq
- id: comment
  doc: print comments in headers
  type: boolean
  inputBinding:
    prefix: --comment
- id: lex
  doc: output lexicographically smaller sequence
  type: boolean
  inputBinding:
    prefix: --lex
outputs: []
cwlVersion: v1.1
baseCommand:
- fastutils
- revcomp
