class: CommandLineTool
id: fastutils_revcomp.cwl
inputs:
- id: in_in
  doc: input file in fasta/q format [stdin]
  type: File
  inputBinding:
    prefix: --in
- id: in_out
  doc: output file [stdout]
  type: File
  inputBinding:
    prefix: --out
- id: in_linewidth
  doc: size of lines in fasta output. Use 0 for no wrapping [0]
  type: long
  inputBinding:
    prefix: --lineWidth
- id: in_fast_q
  doc: output reads in fastq format if possible
  type: boolean
  inputBinding:
    prefix: --fastq
- id: in_comment
  doc: print comments in headers
  type: boolean
  inputBinding:
    prefix: --comment
- id: in_lex
  doc: output lexicographically smaller sequence
  type: boolean
  inputBinding:
    prefix: --lex
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- fastutils
- revcomp
