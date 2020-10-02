class: CommandLineTool
id: starchcat_typical.cwl
inputs:
- id: in_note
  doc: ="foo bar..."   Append note to output archive metadata (optional).
  type: boolean
  inputBinding:
    prefix: --note
- id: in_bzip_two
  doc: "| --gzip      Specify backend compression type (optional, default\nis bzip2)."
  type: boolean
  inputBinding:
    prefix: --bzip2
- id: in_omit_signature
  doc: "Skip generating per-chromosome data integrity signature\n(optional, default\
    \ is to generate signature)."
  type: boolean
  inputBinding:
    prefix: --omit-signature
- id: in_report_progress
  doc: "Report compression progress every N elements per\nchromosome to standard error\
    \ stream (optional)"
  type: string
  inputBinding:
    prefix: --report-progress
- id: in_required_dot
  doc: '* While two or more inputs make sense for a multiset union operation, you'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- starchcat-typical
