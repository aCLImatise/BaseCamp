class: CommandLineTool
id: geneChecker.py.cwl
inputs:
- id: in_genbank_reference
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_organism_type
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mitofinder:1.4--py27h516909a_0
cwlVersion: v1.1
baseCommand:
- geneChecker.py
