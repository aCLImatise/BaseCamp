class: CommandLineTool
id: quasitools_call_codonvar.cwl
inputs:
- id: in_error_rate
  doc: "estimated sequencing error rate.\n-o, --output FILENAME\n--help          \
    \        Show this message and exit.\n"
  type: File
  inputBinding:
    prefix: --error_rate
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_offset
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_bed_four_file
  doc: ''
  type: long
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_error_rate
  doc: "estimated sequencing error rate.\n-o, --output FILENAME\n--help          \
    \        Show this message and exit.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_error_rate)
cwlVersion: v1.1
baseCommand:
- quasitools
- call
- codonvar
