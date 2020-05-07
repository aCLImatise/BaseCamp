class: CommandLineTool
id: sc3_sc3_kmeans.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a transformed SC3 'SingleCellExperiment' object has been
    stored after processed with sc3_calc_transfs()
  type: string
  inputBinding:
    prefix: --input-object-file
- id: ks
  doc: A comma-separated string or single value representing the number of clusters
    k to be used for SC3 clustering.
  type: string
  inputBinding:
    prefix: --ks
- id: output_object_file
  doc: File name for R object of type 'SingleCellExperiment' from SC3 in which to
    store the kmeans clustering as metadata.
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- sc3-sc3-kmeans.R
