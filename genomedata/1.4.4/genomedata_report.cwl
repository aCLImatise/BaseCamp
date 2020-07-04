class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/genomedata_report.cwl
inputs:
- id: gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- genomedata-report
