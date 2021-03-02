class: CommandLineTool
id: hyphy_sw.cwl
inputs:
- id: in_to
  doc: MPIReceive(-1, fromNode, result_String);
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hyphy:2.5.28--h3db2f75_0
cwlVersion: v1.1
baseCommand:
- hyphy
- sw
