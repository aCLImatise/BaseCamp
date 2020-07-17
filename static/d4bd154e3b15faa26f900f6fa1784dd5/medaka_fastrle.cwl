class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/medaka_fastrle.cwl
inputs:
- id: debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: block_size
  doc: 'Block size for hompolymer splitting, e.g. with a value of blocksize=3, AAAA
    -> A3 A1. (default: 94)'
  type: string
  inputBinding:
    prefix: --block_size
- id: input
  doc: Input fasta/q. may be gzip compressed.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- medaka
- fastrle
