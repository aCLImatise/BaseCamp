class: CommandLineTool
id: pir2gsi.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/snoscan:1.0--pl526h516909a_0
cwlVersion: v1.1
baseCommand:
- pir2gsi.pl
