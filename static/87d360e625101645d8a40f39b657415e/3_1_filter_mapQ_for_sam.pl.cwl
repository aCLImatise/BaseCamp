class: CommandLineTool
id: 3_1_filter_mapQ_for_sam.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sat-bsa:1.12--0
cwlVersion: v1.1
baseCommand:
- 3_1_filter_mapQ_for_sam.pl
