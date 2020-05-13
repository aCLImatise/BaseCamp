class: CommandLineTool
id: medaka_fastrle.cwl
inputs:
- id: input
  doc: Input fasta/q. may be gzip compressed.
  type: string
  inputBinding:
    position: 0
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
outputs: []
cwlVersion: v1.1
baseCommand:
- medaka
- fastrle
