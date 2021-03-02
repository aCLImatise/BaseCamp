class: CommandLineTool
id: perbase_merge_adjacent.cwl
inputs:
- id: in_no_header
  doc: Indicate if the input file does not have a header
  type: boolean?
  inputBinding:
    prefix: --no-header
- id: in_output
  doc: The output location, defaults to STDOUT
  type: string?
  inputBinding:
    prefix: --output
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perbase:0.6.3--h35a96ae_0
cwlVersion: v1.1
baseCommand:
- perbase
- merge-adjacent
