class: CommandLineTool
id: filter_important_factors.py.cwl
inputs:
- id: in_in
  doc: Input file
  type: File?
  inputBinding:
    prefix: -in
- id: in_filter
  doc: Filter
  type: string?
  inputBinding:
    prefix: -filter
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0
cwlVersion: v1.1
baseCommand:
- filter_important_factors.py
