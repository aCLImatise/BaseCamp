class: CommandLineTool
id: analyze_diff_expr.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/trinity:2.11.0--h5ef6573_1
cwlVersion: v1.1
baseCommand:
- analyze_diff_expr.pl
