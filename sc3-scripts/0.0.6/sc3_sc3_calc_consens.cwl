class: CommandLineTool
id: sc3_sc3_calc_consens.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a SC3 'SingleCellExperiment' object has been stored after
    kmeans clustering.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: output_text_file
  doc: Text file name in which to store clusters, one column for every k value.
  type: string
  inputBinding:
    prefix: --output-text-file
- id: output_object_file
  doc: File name for R object of type 'SingleCellExperiment' from SC3 in which to
    store the consensus matrix.
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- sc3-sc3-calc-consens.R
