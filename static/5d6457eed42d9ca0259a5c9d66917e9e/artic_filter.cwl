class: CommandLineTool
id: ../../../artic_filter.cwl
inputs:
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: max_length
  doc: remove reads greater than read length
  type: long
  inputBinding:
    prefix: --max-length
- id: min_length
  doc: remove reads less than read length
  type: long
  inputBinding:
    prefix: --min-length
- id: filename
  doc: FASTQ file.
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- artic
- filter
