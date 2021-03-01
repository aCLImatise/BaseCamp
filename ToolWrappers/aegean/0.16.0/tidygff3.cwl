class: CommandLineTool
id: tidygff3.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aegean:0.16.0--hc2cb157_0
cwlVersion: v1.1
baseCommand:
- tidygff3
