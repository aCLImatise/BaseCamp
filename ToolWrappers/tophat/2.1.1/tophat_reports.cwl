class: CommandLineTool
id: tophat_reports.cwl
inputs:
- id: in_junctions_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_insertions_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_deletions_dot_vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_accepted_hits_dots_am
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tophat_reports
