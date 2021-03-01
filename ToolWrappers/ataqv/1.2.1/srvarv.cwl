class: CommandLineTool
id: srvarv.cwl
inputs:
- id: in_port
  doc: "The TCP port on which to serve the viewer (default:\n8000).\n"
  type: long?
  inputBinding:
    prefix: --port
- id: in_instance
  doc: "The directory containing the viewer instance (default:\ncurrent directory)."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ataqv:1.2.1--py36h00065c3_1
cwlVersion: v1.1
baseCommand:
- srvarv
