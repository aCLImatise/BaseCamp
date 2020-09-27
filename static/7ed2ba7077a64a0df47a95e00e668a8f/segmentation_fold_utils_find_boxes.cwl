class: CommandLineTool
id: segmentation_fold_utils_find_boxes.cwl
inputs:
- id: in_box_one
  doc: "Sequence of box1 (default = C-box: 'NRUGAUG')"
  type: long
  inputBinding:
    prefix: --box1
- id: in_box_two
  doc: "Sequence of box2 (default = D-box: 'CUGA')"
  type: long
  inputBinding:
    prefix: --box2
- id: in_forward
  doc: / --no-forward  Search in the forward direction of the reference
  type: boolean
  inputBinding:
    prefix: --forward
- id: in_bed_output_file
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- segmentation-fold-utils
- find-boxes
