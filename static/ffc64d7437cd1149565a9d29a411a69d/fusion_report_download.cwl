class: CommandLineTool
id: fusion_report_download.cwl
inputs:
- id: output
  doc: Output directory
  type: string
  inputBinding:
    position: 0
- id: cosmic_usr
  doc: COSMIC username
  type: string
  inputBinding:
    prefix: --cosmic_usr
- id: cosmic_passwd
  doc: COSMIC password
  type: string
  inputBinding:
    prefix: --cosmic_passwd
- id: cosmic_token
  doc: COSMIC token
  type: string
  inputBinding:
    prefix: --cosmic_token
outputs: []
cwlVersion: v1.1
baseCommand:
- fusion_report
- download
