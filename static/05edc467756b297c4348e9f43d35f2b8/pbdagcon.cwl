class: CommandLineTool
id: pbdagcon.cwl
inputs:
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: v
  doc: '[ --verbose ]               Increase logging verbosity'
  type: boolean
  inputBinding:
    prefix: -v
- id: a
  doc: '[ --align ]                 Align sequences before adding to consensus'
  type: boolean
  inputBinding:
    prefix: -a
- id: t
  doc: '[ --trim ] arg (=50)        Trim alignment by N bases on either side'
  type: boolean
  inputBinding:
    prefix: -t
- id: m
  doc: '[ --min-length ] arg (=500) Filter both alignments and corrected reads  less
    than length'
  type: boolean
  inputBinding:
    prefix: -m
- id: c
  doc: '[ --min-coverage ] arg (=8) Minimum coverage required to correct'
  type: boolean
  inputBinding:
    prefix: -c
- id: j
  doc: '[ --threads ] arg           Number of consensus threads to use'
  type: boolean
  inputBinding:
    prefix: -j
- id: r
  doc: '[ --rbuf ] arg (=30)        Size of the read buffer'
  type: boolean
  inputBinding:
    prefix: -r
- id: w
  doc: '[ --wbuf ] arg (=30)        Size of the write buffer'
  type: boolean
  inputBinding:
    prefix: -w
- id: input
  doc: (=-)               Input (flag is optional)
  type: string
  inputBinding:
    prefix: --input
outputs: []
cwlVersion: v1.1
baseCommand:
- pbdagcon
