class: CommandLineTool
id: fusion_report_sync.cwl
inputs:
- id: in_cosmic_usr
  doc: COSMIC username
  type: string?
  inputBinding:
    prefix: --cosmic_usr
- id: in_cosmic_passwd
  doc: COSMIC password
  type: string?
  inputBinding:
    prefix: --cosmic_passwd
- id: in_cosmic_token
  doc: "COSMIC token\n"
  type: string?
  inputBinding:
    prefix: --cosmic_token
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fusion-report:2.1.4--py_0
cwlVersion: v1.1
baseCommand:
- fusion_report
- sync
