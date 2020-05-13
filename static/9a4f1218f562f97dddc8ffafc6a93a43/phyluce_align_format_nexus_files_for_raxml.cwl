class: CommandLineTool
id: phyluce_align_format_nexus_files_for_raxml.cwl
inputs:
- id: alignments
  doc: 'The directory containing alignments to concatenate (NEXUS-ONLY). (default:
    None)'
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: 'The output file for the concatenated phylip data (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: nexus
  doc: 'Export as NEXUS format (default: False)'
  type: boolean
  inputBinding:
    prefix: --nexus
- id: charsets
  doc: 'Add charsets to phylip file (default: False)'
  type: boolean
  inputBinding:
    prefix: --charsets
- id: verbosity
  doc: 'The logging level to use. (default: INFO)'
  type: string
  inputBinding:
    prefix: --verbosity
- id: log_path
  doc: 'The path to a directory to hold logs. (default: None)'
  type: string
  inputBinding:
    prefix: --log-path
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_format_nexus_files_for_raxml
