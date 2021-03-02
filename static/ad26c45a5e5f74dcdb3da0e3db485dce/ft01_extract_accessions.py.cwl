class: CommandLineTool
id: ft01_extract_accessions.py.cwl
inputs:
- id: in_csv
  doc: "CSV of ortholog results, first column must be queries with\nheader Accession,\
    \ remaining columns should be orthology results\nwith one organism per column"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/batch_brb:1.0.1--0
cwlVersion: v1.1
baseCommand:
- ft01_extract_accessions.py
