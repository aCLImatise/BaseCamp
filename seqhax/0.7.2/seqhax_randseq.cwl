class: CommandLineTool
id: seqhax_randseq.cwl
inputs:
- id: n
  doc: Number of reads. Use 0 for infinite. [default 1000]
  type: string
  inputBinding:
    prefix: -n
- id: s
  doc: Seed for RNG.
  type: string
  inputBinding:
    prefix: -s
- id: l
  doc: Length of each read. [default 100]
  type: long
  inputBinding:
    prefix: -l
- id: p
  doc: Paired reads [default false]
  type: boolean
  inputBinding:
    prefix: -p
- id: f
  doc: Output as fasta (no qualities)
  type: boolean
  inputBinding:
    prefix: -f
outputs: []
cwlVersion: v1.1
baseCommand:
- seqhax
- randseq
