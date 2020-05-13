class: CommandLineTool
id: segmentation_fold_utils_find_boxes.cwl
inputs:
- id: box1
  doc: "Sequence of box1 (default = C-box: 'NRUGAUG')"
  type: string
  inputBinding:
    prefix: --box1
- id: box2
  doc: "Sequence of box2 (default = D-box: 'CUGA')"
  type: string
  inputBinding:
    prefix: --box2
- id: forward
  doc: / --no-forward  Search in the forward direction of the reference sequence
  type: boolean
  inputBinding:
    prefix: --forward
- id: reverse
  doc: / --no-reverse  Search in the reverse complement of the reference sequence
  type: boolean
  inputBinding:
    prefix: --reverse
outputs: []
cwlVersion: v1.1
baseCommand:
- segmentation-fold-utils
- find-boxes
