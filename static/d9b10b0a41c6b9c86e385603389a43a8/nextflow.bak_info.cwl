class: CommandLineTool
id: nextflow.bak_info.cwl
inputs:
- id: in_check_updates
  doc: "Check for remote updates\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -check-updates
- id: in_show_detailed_informationdefault
  doc: "Show detailed information\nDefault: false"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_output_format_yaml
  doc: "Output format, either: text (default), json, yaml\n"
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_info
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_project
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/nextflow:20.10.0--hecda079_0
cwlVersion: v1.1
baseCommand:
- nextflow.bak
- info
