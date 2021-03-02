class: CommandLineTool
id: hts_nim_tools.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hts-nim-tools:0.3.11--hbeb723e_0
cwlVersion: v1.1
baseCommand:
- hts_nim_tools
