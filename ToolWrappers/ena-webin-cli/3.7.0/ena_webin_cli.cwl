class: CommandLineTool
id: ena_webin_cli.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ena-webin-cli:3.7.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- ena-webin-cli
