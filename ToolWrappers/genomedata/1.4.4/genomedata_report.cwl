class: CommandLineTool
id: genomedata_report.cwl
inputs:
- id: in_gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genomedata-report
