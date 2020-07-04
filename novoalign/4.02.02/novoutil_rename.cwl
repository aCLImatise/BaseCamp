class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/novoutil_rename.cwl
inputs:
- id: assembly_report_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: assembly_regions_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bed_slash_vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- novoutil
- rename
