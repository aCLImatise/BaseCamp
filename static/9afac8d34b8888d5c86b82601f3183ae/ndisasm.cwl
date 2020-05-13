class: CommandLineTool
id: ndisasm.cwl
inputs:
- id: a
  doc: auto (intelligent) sync
  type: string
  inputBinding:
    prefix: -a
- id: u
  doc: as -b 32
  type: string
  inputBinding:
    prefix: -u
- id: b
  doc: 16, -b 32 or -b 64 sets the processor mode
  type: boolean
  inputBinding:
    prefix: -b
- id: h
  doc: this text
  type: string
  inputBinding:
    prefix: -h
- id: r
  doc: the version number
  type: string
  inputBinding:
    prefix: -r
- id: e
  doc: <bytes> bytes of header
  type: string
  inputBinding:
    prefix: -e
- id: k
  doc: disassembling <bytes> bytes from position <start>
  type: string
  inputBinding:
    prefix: -k
- id: p
  doc: the preferred vendor instruction set (intel, amd, cyrix, idt)
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- ndisasm
