class: CommandLineTool
id: count_fixed_catalog_snps.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/stacks:2.55--he513fc3_0
cwlVersion: v1.1
baseCommand:
- count_fixed_catalog_snps.py
