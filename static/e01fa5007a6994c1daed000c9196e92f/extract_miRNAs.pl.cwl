class: CommandLineTool
id: extract_miRNAs.pl.cwl
inputs:
- id: in_e_dot_gdot
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_perl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- extract_miRNAs.pl
