class: CommandLineTool
id: fastutils_interleave.cwl
inputs:
- id: in_in_one
  doc: fasta/q file containing forward (left) reads [required]
  type: long?
  inputBinding:
    prefix: --in1
- id: in_in_two
  doc: fasta/q file containing reverse (right) reads [required]
  type: long?
  inputBinding:
    prefix: --in2
- id: in_out
  doc: output interlaced reads in STR file [stdout]
  type: File?
  inputBinding:
    prefix: --out
- id: in_fast_q
  doc: output reads in fastq format if possible
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_separator
  doc: separator character [.]
  type: string?
  inputBinding:
    prefix: --separator
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output interlaced reads in STR file [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- fastutils
- interleave
