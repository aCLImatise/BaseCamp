class: CommandLineTool
id: mafft_homologs.rb.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mafft:7.475--h516909a_0
cwlVersion: v1.1
baseCommand:
- mafft-homologs.rb
