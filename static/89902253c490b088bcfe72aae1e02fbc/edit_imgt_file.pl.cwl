class: CommandLineTool
id: edit_imgt_file.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/igblast:1.17.1--h388d1fa_0
cwlVersion: v1.1
baseCommand:
- edit_imgt_file.pl
