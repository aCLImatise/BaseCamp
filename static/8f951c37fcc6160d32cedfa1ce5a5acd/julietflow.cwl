class: CommandLineTool
id: julietflow.cwl
inputs:
- id: i
  doc: '[arg]  BAM CCS file to process. Required.'
  type: boolean
  inputBinding:
    prefix: -i
- id: r
  doc: '[arg]  Reference FASTA file. Required.'
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: '[arg]  Juliet target config. Default=none'
  type: boolean
  inputBinding:
    prefix: -c
- id: j
  doc: '[arg]  Number of CPU cores. Default=1'
  type: boolean
  inputBinding:
    prefix: -j
- id: e
  doc: '[arg]  Maximal number of re-align iterations. Default=1'
  type: boolean
  inputBinding:
    prefix: -e
- id: t
  doc: '[arg]  Target reference FASTA, per default using --ref.'
  type: boolean
  inputBinding:
    prefix: -t
- id: m
  doc: '[arg]  Minimal variant frequency. Default=0.'
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: '[arg]  Maximal variant frequency. Default=100.'
  type: boolean
  inputBinding:
    prefix: -n
- id: g
  doc: '[arg]  Genomic region of interest, reads will be clipped to that region, empty
    means all reads.'
  type: boolean
  inputBinding:
    prefix: -g
- id: p
  doc: Phase variants.
  type: boolean
  inputBinding:
    prefix: -p
- id: k
  doc: Only report known DRM positions.
  type: boolean
  inputBinding:
    prefix: -k
- id: z
  doc: Keep temporary files.
  type: boolean
  inputBinding:
    prefix: -z
outputs: []
cwlVersion: v1.1
baseCommand:
- julietflow
