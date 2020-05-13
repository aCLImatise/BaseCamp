class: CommandLineTool
id: starchcat_megarow.cwl
inputs:
- id: note
  doc: ="foo bar..."   Append note to output archive metadata (optional).
  type: boolean
  inputBinding:
    prefix: --note
- id: bzip2
  doc: '| --gzip      Specify backend compression type (optional, default is bzip2).'
  type: boolean
  inputBinding:
    prefix: --bzip2
- id: omit_signature
  doc: Skip generating per-chromosome data integrity signature (optional, default
    is to generate signature).
  type: boolean
  inputBinding:
    prefix: --omit-signature
- id: report_progress
  doc: Report compression progress every N elements per chromosome to standard error
    stream (optional)
  type: string
  inputBinding:
    prefix: --report-progress
outputs: []
cwlVersion: v1.1
baseCommand:
- starchcat-megarow
