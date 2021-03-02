class: CommandLineTool
id: bg_bpipe.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bpipe:0.9.10--0
cwlVersion: v1.1
baseCommand:
- bg-bpipe
