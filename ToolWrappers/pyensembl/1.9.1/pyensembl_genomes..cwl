class: CommandLineTool
id: pyensembl_genomes..cwl
inputs:
- id: in_manipulate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_py_ensembl
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyensembl:1.9.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- pyensembl
- genomes.
