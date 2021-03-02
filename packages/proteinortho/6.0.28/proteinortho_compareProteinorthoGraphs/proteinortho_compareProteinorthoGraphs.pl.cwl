class: CommandLineTool
id: proteinortho_compareProteinorthoGraphs.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteinortho:6.0.28--hfd40d39_0
cwlVersion: v1.1
baseCommand:
- proteinortho_compareProteinorthoGraphs.pl
