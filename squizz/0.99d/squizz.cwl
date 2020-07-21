class: CommandLineTool
id: ../../../squizz.cwl
inputs:
- id: detect_alignment_formats
  doc: '... Detect alignment formats only.'
  type: boolean
  inputBinding:
    prefix: -A
- id: detect_sequence_formats
  doc: '... Detect sequence formats only.'
  type: boolean
  inputBinding:
    prefix: -S
- id: convert_format_fmt
  doc: '... Convert into format <fmt>.'
  type: string
  inputBinding:
    prefix: -c
- id: assume_format_fmt
  doc: '... Assume input format <fmt>.'
  type: string
  inputBinding:
    prefix: -f
- id: list_supported_formats
  doc: '... List all supported formats.'
  type: boolean
  inputBinding:
    prefix: -l
- id: count_report_number
  doc: '... Count and report entries number.'
  type: boolean
  inputBinding:
    prefix: -n
- id: disable_strict_format
  doc: '... Disable strict format checks.'
  type: boolean
  inputBinding:
    prefix: -s
- id: display_version_information
  doc: '... Display version information and exit.'
  type: boolean
  inputBinding:
    prefix: -v
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- squizz
