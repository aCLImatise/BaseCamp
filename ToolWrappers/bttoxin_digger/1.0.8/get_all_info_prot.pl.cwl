class: CommandLineTool
id: get_all_info_prot.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bttoxin_digger:1.0.8--0
cwlVersion: v1.1
baseCommand:
- get_all_info_prot.pl
