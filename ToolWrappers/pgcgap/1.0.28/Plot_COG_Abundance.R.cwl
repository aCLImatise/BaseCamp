class: CommandLineTool
id: Plot_COG_Abundance.R.cwl
inputs:
- id: in_lowess
  doc: 'Error in file(file, "rt") : cannot open the connection'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pgcgap:1.0.28--py37pl5262hdfd78af_0
cwlVersion: v1.1
baseCommand:
- Plot_COG_Abundance.R
