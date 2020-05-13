class: CommandLineTool
id: fastutils_interleave.cwl
inputs:
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
