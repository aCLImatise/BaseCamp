class: CommandLineTool
id: dadaist2_crosstalk.cwl
inputs:
- id: in_input
  doc: OTU table filename
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Cleaned OTU table filename
  type: File?
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: Print extra information
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Print debug information
  type: boolean?
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dadaist2:0.7.5--0
cwlVersion: v1.1
baseCommand:
- dadaist2-crosstalk
