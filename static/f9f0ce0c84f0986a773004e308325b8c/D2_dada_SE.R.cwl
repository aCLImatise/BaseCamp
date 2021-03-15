class: CommandLineTool
id: D2_dada_SE.R.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dadaist2:0.7.3--0
cwlVersion: v1.1
baseCommand:
- D2-dada-SE.R
