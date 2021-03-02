class: CommandLineTool
id: Assemblytics_delta_unique_length_required.cwl
inputs:
- id: in_assembly_tics
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_delta
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_prefix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_unique_length_required
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_min_size
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_max_size
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/assemblytics:1.2.1--0
cwlVersion: v1.1
baseCommand:
- Assemblytics
- delta
- unique_length_required
