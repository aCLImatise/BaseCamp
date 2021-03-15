class: CommandLineTool
id: get_Trinity_gene_to_trans_map.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/trinity:2.12.0--h5ef6573_0
cwlVersion: v1.1
baseCommand:
- get_Trinity_gene_to_trans_map.pl
