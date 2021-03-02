class: CommandLineTool
id: stringmeup_confidence.cwl
inputs:
- id: in_gz_output
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --gz_output
- id: in_minimum_hit_groups
  doc: ''
  type: long?
  inputBinding:
    prefix: --minimum_hit_groups
- id: in_keep_unclassified
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --keep_unclassified
- id: in_output_verbose
  doc: ''
  type: File?
  inputBinding:
    prefix: --output_verbose
- id: in_output_classifications
  doc: ''
  type: File?
  inputBinding:
    prefix: --output_classifications
- id: in_output_report
  doc: ''
  type: File?
  inputBinding:
    prefix: --output_report
- id: in_nodes
  doc: ''
  type: File?
  inputBinding:
    prefix: --nodes
- id: in_names
  doc: ''
  type: File?
  inputBinding:
    prefix: --names
- id: in_classifications
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
  dockerPull: quay.io/biocontainers/stringmeup:0.1.4--py_0
cwlVersion: v1.1
baseCommand:
- stringmeup
- confidence
