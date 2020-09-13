class: CommandLineTool
id: ../../../add_gff_info_pfam.cwl
inputs:
- id: in_verbose
  doc: ''
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_id_attr
  doc: "In which attribute the Pfam ID/ACCESSION is stored\n(defaults to *gene_id*)"
  type: string
  inputBinding:
    prefix: --id-attr
- id: in_use_accession
  doc: "If used, the attribute value is the Pfam ACCESSION\n(e.g. PF06894), not ID\
    \ (e.g. Phage_TAC_2)"
  type: boolean
  inputBinding:
    prefix: --use-accession
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- add-gff-info
- pfam
