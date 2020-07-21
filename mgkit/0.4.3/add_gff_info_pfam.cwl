class: CommandLineTool
id: ../../../add_gff_info_pfam.cwl
inputs:
- id: id_attr
  doc: In which attribute the Pfam ID/ACCESSION is stored (defaults to *gene_id*)
  type: string
  inputBinding:
    prefix: --id-attr
- id: use_accession
  doc: If used, the attribute value is the Pfam ACCESSION (e.g. PF06894), not ID (e.g.
    Phage_TAC_2)
  type: boolean
  inputBinding:
    prefix: --use-accession
- id: input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- add-gff-info
- pfam
