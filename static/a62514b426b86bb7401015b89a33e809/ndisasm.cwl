class: CommandLineTool
id: ../../../ndisasm.cwl
inputs:
- id: auto_intelligent_sync
  doc: auto (intelligent) sync
  type: string
  inputBinding:
    prefix: -a
- id: as_b
  doc: as -b 32
  type: string
  inputBinding:
    prefix: -u
- id: b_sets_mode
  doc: or -b 64 sets the processor mode
  type: string
  inputBinding:
    prefix: -b
- id: this_text
  doc: this text
  type: string
  inputBinding:
    prefix: -h
- id: the_version_number
  doc: the version number
  type: string
  inputBinding:
    prefix: -r
- id: bytes_bytes_header
  doc: <bytes> bytes of header
  type: string
  inputBinding:
    prefix: -e
- id: disassembling_bytes_bytes
  doc: disassembling <bytes> bytes from position <start>
  type: string
  inputBinding:
    prefix: -k
- id: preferred_vendor_instruction
  doc: the preferred vendor instruction set (intel, amd, cyrix, idt)
  type: string
  inputBinding:
    prefix: -p
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: s
  doc: ''
  type: string
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- ndisasm
