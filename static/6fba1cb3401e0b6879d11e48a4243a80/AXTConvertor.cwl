class: CommandLineTool
id: AXTConvertor.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kakscalculator2:2.0.1--hc9558a2_0
cwlVersion: v1.1
baseCommand:
- AXTConvertor
