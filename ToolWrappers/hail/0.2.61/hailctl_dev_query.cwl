class: CommandLineTool
id: hailctl_dev_query.cwl
inputs:
- id: in_set
  doc: Set a Hail query resource value.
  type: string
  inputBinding:
    position: 0
- id: in_unset
  doc: "Unset a Hail query resource value (restore to default\nbehavior)."
  type: string
  inputBinding:
    position: 1
- id: in_get
  doc: "Get the value of a Hail query resource (or all values of a\nspecific resource\
    \ type)."
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1
cwlVersion: v1.1
baseCommand:
- hailctl
- dev
- query
