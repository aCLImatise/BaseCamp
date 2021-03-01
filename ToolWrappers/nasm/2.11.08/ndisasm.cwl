class: CommandLineTool
id: ndisasm.cwl
inputs:
- id: in_auto_intelligent_sync
  doc: auto (intelligent) sync
  type: string?
  inputBinding:
    prefix: -a
- id: in_as_b
  doc: as -b 32
  type: long?
  inputBinding:
    prefix: -u
- id: in_sets_processor_mode
  doc: or -b 64 sets the processor mode
  type: long?
  inputBinding:
    prefix: -b
- id: in_this_text
  doc: this text
  type: string?
  inputBinding:
    prefix: -h
- id: in_the_version_number
  doc: the version number
  type: long?
  inputBinding:
    prefix: -r
- id: in_bytes_bytes_header
  doc: <bytes> bytes of header
  type: string?
  inputBinding:
    prefix: -e
- id: in_disassembling_bytes_bytes
  doc: disassembling <bytes> bytes from position <start>
  type: string?
  inputBinding:
    prefix: -k
- id: in_preferred_vendor_instruction
  doc: the preferred vendor instruction set (intel, amd, cyrix, idt)
  type: string?
  inputBinding:
    prefix: -p
- id: in_s
  doc: ''
  type: string?
  inputBinding:
    prefix: -s
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ndisasm
