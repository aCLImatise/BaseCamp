class: CommandLineTool
id: cravat_admin_report_issue.cwl
inputs:
- id: in_cravat_admin
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cravat-admin
- report-issue
