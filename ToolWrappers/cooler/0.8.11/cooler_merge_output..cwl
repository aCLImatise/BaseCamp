class: CommandLineTool
id: cooler_merge_output..cwl
inputs:
- id: in_cooler
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_merge
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out_path
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_in_paths
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cooler
- merge
- output.
