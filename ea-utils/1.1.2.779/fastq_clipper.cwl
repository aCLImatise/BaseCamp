class: CommandLineTool
id: fastq_clipper.cwl
inputs:
- id: fast_q_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: adapters
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: o
  doc: Output file (stats to stdout)
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: Maximum difference percentage (10)
  type: string
  inputBinding:
    prefix: -p
- id: m
  doc: Minimum clip length (1)
  type: string
  inputBinding:
    prefix: -m
- id: l
  doc: Minimum remaining sequence length (15)
  type: string
  inputBinding:
    prefix: -l
- id: x
  doc: '[N]  Extra match length past adapter length,  N =-1 : search all N = 0 : search
    only up to adapter length'
  type: boolean
  inputBinding:
    prefix: -x
- id: e
  doc: End-of-line (default)
  type: boolean
  inputBinding:
    prefix: -e
- id: b
  doc: Beginning-of-line (not supported yet)
  type: boolean
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-clipper
