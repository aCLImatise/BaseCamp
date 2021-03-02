class: CommandLineTool
id: kaiju_excluded_accessions.txt.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/kaiju:1.7.4--h8b12597_0
cwlVersion: v1.1
baseCommand:
- kaiju-excluded-accessions.txt
