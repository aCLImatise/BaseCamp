class: CommandLineTool
id: abyss_junction.cwl
inputs:
- id: in_ignore
  doc: ignore junctions seen in FILE
  type: File?
  inputBinding:
    prefix: --ignore
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_overlap
  doc: the overlap graph
  type: string
  inputBinding:
    position: 0
- id: in_scaffold
  doc: a scaffold graph
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0
cwlVersion: v1.1
baseCommand:
- abyss-junction
