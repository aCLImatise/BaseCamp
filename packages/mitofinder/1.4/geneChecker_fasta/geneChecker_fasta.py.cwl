class: CommandLineTool
id: geneChecker_fasta.py.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mitofinder:1.4--py27h516909a_0
cwlVersion: v1.1
baseCommand:
- geneChecker_fasta.py
