class: CommandLineTool
id: make_database.sh.cwl
inputs:
- id: in_found
  doc: found
  type: string?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/siann:1.2--hdfd78af_1
cwlVersion: v1.1
baseCommand:
- make_database.sh
