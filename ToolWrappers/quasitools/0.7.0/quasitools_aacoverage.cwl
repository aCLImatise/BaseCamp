class: CommandLineTool
id: quasitools_aacoverage.cwl
inputs:
- id: in_output
  doc: "--help                 Show this message and exit.\n"
  type: File
  inputBinding:
    prefix: --output
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
- id: in_bed_four_file
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- quasitools
- aacoverage
