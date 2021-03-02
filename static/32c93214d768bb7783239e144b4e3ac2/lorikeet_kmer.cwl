class: CommandLineTool
id: lorikeet_kmer.cwl
inputs:
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/lorikeet-genome:0.5.0--h9eda3c7_0
cwlVersion: v1.1
baseCommand:
- lorikeet
- kmer
