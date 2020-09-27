class: CommandLineTool
id: phyluce_align_format_nexus_files_for_raxml.cwl
inputs:
- id: in_output
  doc: '[--nexus]'
  type: string
  inputBinding:
    prefix: --output
- id: in_alignments
  doc: "The directory containing alignments to concatenate\n(NEXUS-ONLY). (default:\
    \ None)"
  type: Directory
  inputBinding:
    prefix: --alignments
- id: in_nexus
  doc: 'Export as NEXUS format (default: False)'
  type: boolean
  inputBinding:
    prefix: --nexus
- id: in_charsets
  doc: 'Add charsets to phylip file (default: False)'
  type: boolean
  inputBinding:
    prefix: --charsets
- id: in_verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: in_log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: File
  inputBinding:
    prefix: --log-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_align_format_nexus_files_for_raxml
