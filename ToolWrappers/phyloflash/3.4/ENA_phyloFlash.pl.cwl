class: CommandLineTool
id: ENA_phyloFlash.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phyloflash:3.4--0
cwlVersion: v1.1
baseCommand:
- ENA_phyloFlash.pl
