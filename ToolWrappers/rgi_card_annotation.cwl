class: CommandLineTool
id: rgi_card_annotation.cwl
inputs:
- id: in_input
  doc: card.json file
  type: File
  inputBinding:
    prefix: --input
- id: in_ncbi
  doc: adds ncbi accession to FASTA headers
  type: boolean
  inputBinding:
    prefix: --ncbi
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rgi
- card_annotation
