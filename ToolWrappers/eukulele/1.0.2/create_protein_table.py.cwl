class: CommandLineTool
id: create_protein_table.py.cwl
inputs:
- id: in_in_file_peptide
  doc: ''
  type: File[]
  inputBinding:
    prefix: --infile_peptide
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/eukulele:1.0.2--pyhcb32578_1
cwlVersion: v1.1
baseCommand:
- create_protein_table.py
