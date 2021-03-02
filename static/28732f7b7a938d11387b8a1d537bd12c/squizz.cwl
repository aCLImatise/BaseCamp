class: CommandLineTool
id: squizz.cwl
inputs:
- id: in_detect_alignment_formats
  doc: '... Detect alignment formats only.'
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_detect_sequence_formats
  doc: '... Detect sequence formats only.'
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_convert_format_fmt
  doc: '... Convert into format <fmt>.'
  type: string?
  inputBinding:
    prefix: -c
- id: in_assume_format_fmt
  doc: '... Assume input format <fmt>.'
  type: string?
  inputBinding:
    prefix: -f
- id: in_list_supported_formats
  doc: '... List all supported formats.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_count_report_entries
  doc: '... Count and report entries number.'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_disable_strict_format
  doc: '... Disable strict format checks.'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_display_version_information
  doc: '... Display version information and exit.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- squizz
