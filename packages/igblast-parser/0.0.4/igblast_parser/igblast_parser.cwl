class: CommandLineTool
id: igblast_parser.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/igblast-parser:0.0.4--py39h3dcb392_0
cwlVersion: v1.1
baseCommand:
- igblast-parser
