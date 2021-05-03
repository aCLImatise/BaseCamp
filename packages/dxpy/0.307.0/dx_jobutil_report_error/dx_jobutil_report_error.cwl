class: CommandLineTool
id: dx_jobutil_report_error.cwl
inputs:
- id: in_message
  doc: Error message for the job
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dxpy:0.307.0--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- dx-jobutil-report-error
