class: CommandLineTool
id: eval_predictions.cwl
inputs:
- id: in_l
  doc: '[OPTIONS]'
  type: string
  inputBinding:
    prefix: -l
- id: in_required_list_real
  doc: (required) List of names of files defining real genes (GFF).
  type: string
  inputBinding:
    prefix: -r
- id: in_predicted_predicted_correspond
  doc: "(required) List of names of files defining predicted genes\n(GFF).  Must correspond\
    \ in order to <real_fname_list>."
  type: string
  inputBinding:
    prefix: -p
- id: in_list_names_equal
  doc: "List of names of all features denoting exon regions.  By\ndefault, equal to\
    \ the single name \"CDS\"."
  type: string
  inputBinding:
    prefix: -f
- id: in_dump_full_coords
  doc: "Dump full coords of correct, partially correct, wrong, missed,\nand overlapping\
    \ exons to a set of files having the specified\nfile name prefix."
  type: File
  inputBinding:
    prefix: -d
- id: in_also_report_labeled
  doc: "Also report stats on \"nearly correct\" exons, that is, incorrect\nexons whose\
    \ boundaries are within <nbases> of being correct.\nColumns will be labeled \"\
    NCa\" and \"NCp\"."
  type: string
  inputBinding:
    prefix: -n
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- eval_predictions
