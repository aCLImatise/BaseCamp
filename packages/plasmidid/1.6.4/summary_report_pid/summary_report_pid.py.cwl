class: CommandLineTool
id: summary_report_pid.py.cwl
inputs:
- id: in_input
  doc: REQUIRED.Input pID folder
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_group
  doc: "Creates a group report instead of individual (Default\nTrue)\n"
  type: boolean?
  inputBinding:
    prefix: --group
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidid:1.6.4--1
cwlVersion: v1.1
baseCommand:
- summary_report_pid.py
