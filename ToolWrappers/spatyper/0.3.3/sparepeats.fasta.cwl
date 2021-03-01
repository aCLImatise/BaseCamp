class: CommandLineTool
id: sparepeats.fasta.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spatyper:0.3.3--py_0
cwlVersion: v1.1
baseCommand:
- sparepeats.fasta
