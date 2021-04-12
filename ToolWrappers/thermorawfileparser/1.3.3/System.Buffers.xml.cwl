class: CommandLineTool
id: System.Buffers.xml.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/thermorawfileparser:1.3.3--ha8f3691_1
cwlVersion: v1.1
baseCommand:
- System.Buffers.xml
