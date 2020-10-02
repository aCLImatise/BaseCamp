class: CommandLineTool
id: fusion_report_download.cwl
inputs:
- id: in_cosmic_usr
  doc: COSMIC username
  type: string
  inputBinding:
    prefix: --cosmic_usr
- id: in_cosmic_passwd
  doc: COSMIC password
  type: string
  inputBinding:
    prefix: --cosmic_passwd
- id: in_cosmic_token
  doc: "COSMIC token\n"
  type: string
  inputBinding:
    prefix: --cosmic_token
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fusion_report
- download
