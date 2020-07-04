class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastutils_interleave.cwl
inputs:
- id: in_one
  doc: fasta/q file containing forward (left) reads [required]
  type: string
  inputBinding:
    prefix: --in1
- id: in_two
  doc: fasta/q file containing reverse (right) reads [required]
  type: string
  inputBinding:
    prefix: --in2
- id: out
  doc: output interlaced reads in STR file [stdout]
  type: string
  inputBinding:
    prefix: --out
- id: fast_q
  doc: output reads in fastq format if possible
  type: boolean
  inputBinding:
    prefix: --fastq
- id: separator
  doc: separator character [.]
  type: string
  inputBinding:
    prefix: --separator
outputs: []
cwlVersion: v1.1
baseCommand:
- fastutils
- interleave
