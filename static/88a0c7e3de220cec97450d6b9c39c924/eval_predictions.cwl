class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/eval_predictions.cwl
inputs:
- id: l
  doc: '[OPTIONS] '
  type: string
  inputBinding:
    prefix: -l
- id: required_list_real
  doc: '(required) List of names of files defining real genes (GFF). '
  type: string
  inputBinding:
    prefix: -r
- id: required_list_predicted
  doc: (required) List of names of files defining predicted genes (GFF).  Must correspond
    in order to <real_fname_list>.
  type: string
  inputBinding:
    prefix: -p
- id: list_names_features
  doc: List of names of all features denoting exon regions.  By default, equal to
    the single name "CDS".
  type: string
  inputBinding:
    prefix: -f
- id: dump_full_coords
  doc: Dump full coords of correct, partially correct, wrong, missed,  and overlapping
    exons to a set of files having the specified  file name prefix.
  type: string
  inputBinding:
    prefix: -d
- id: also_report_stats
  doc: Also report stats on "nearly correct" exons, that is, incorrect exons whose
    boundaries are within <nbases> of being correct. Columns will be labeled "NCa"
    and "NCp".
  type: string
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- eval_predictions
