class: CommandLineTool
id: ConPairs.cwl
inputs:
- id: in_axt
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_filename
  doc: ''
  type: File?
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kakscalculator2:2.0.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- ConPairs
