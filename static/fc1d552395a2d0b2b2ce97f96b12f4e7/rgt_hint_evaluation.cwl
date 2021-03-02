class: CommandLineTool
id: rgt_hint_evaluation.cwl
inputs:
- id: in_tfbs_file
  doc: "A bed file containing all motif-predicted binding\nsites (MPBSs).The values\
    \ in the bed SCORE field will\nbe used to rank the MPBSs.The extension must be\n\
    (.bed)."
  type: File?
  inputBinding:
    prefix: --tfbs-file
- id: in_footprint_file
  doc: ",FILE2,FILE3,FILE4...\nThe bed files containing the footprint predictions.The\n\
    extension must be (.bed)."
  type: File?
  inputBinding:
    prefix: --footprint-file
- id: in_footprint_name
  doc: ",NAME2,NAME3,NAME4...\nThe name used to distinguish different footprint\n\
    files.The number of methods name must be consistent\nwith that of footprint files"
  type: long?
  inputBinding:
    prefix: --footprint-name
- id: in_footprint_type
  doc: ",TYPE2,TYPE3,TYPE4...\nThe methods type used to predicted the footprint.Must\n\
    be SC (site centric) or SEG (segmentation approach)"
  type: long?
  inputBinding:
    prefix: --footprint-type
- id: in_output_location
  doc: "If set, HINT will print the receiver operating\ncharacteristic curve."
  type: File?
  inputBinding:
    prefix: --output-location
- id: in_print_pr_curve
  doc: If set, HINT will print the precision recall curve.
  type: boolean?
  inputBinding:
    prefix: --print-pr-curve
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-hint
- evaluation
