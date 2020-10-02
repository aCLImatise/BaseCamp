class: CommandLineTool
id: add_gff_info_pfam.cwl
inputs:
- id: in_verbose
  doc: "-i, --id-attr TEXT   In which attribute the Pfam ID/ACCESSION is stored\n\
    (defaults to *gene_id*)\n-a, --use-accession  If used, the attribute value is\
    \ the Pfam ACCESSION\n(e.g. PF06894), not ID (e.g. Phage_TAC_2)\n--help      \
    \         Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
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
