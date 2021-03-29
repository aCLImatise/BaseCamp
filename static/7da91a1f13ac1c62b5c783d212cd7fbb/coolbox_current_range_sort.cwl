class: CommandLineTool
id: coolbox_current_range_sort.cwl
inputs:
- id: in_key
  doc: "=\e[4mKEY\e[0m"
  type: boolean?
  inputBinding:
    prefix: --key
- id: in_reverse
  doc: "=\e[4mREVERSE\e[0m"
  type: boolean?
  inputBinding:
    prefix: --reverse
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/coolbox:0.3.6--py_0
cwlVersion: v1.1
baseCommand:
- coolbox
- current_range
- sort
