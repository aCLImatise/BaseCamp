class: CommandLineTool
id: rtg_sdfsubseq.cwl
inputs:
- id: input
  doc: input SDF
  type: string
  inputBinding:
    prefix: --input
- id: fast_a
  doc: if set, output in FASTA format
  type: boolean
  inputBinding:
    prefix: --fasta
- id: fast_q
  doc: if set, output in FASTQ format
  type: boolean
  inputBinding:
    prefix: --fastq
- id: reverse_complement
  doc: set, output in reverse complement
  type: string
  inputBinding:
    prefix: --reverse-complement
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- sdfsubseq
