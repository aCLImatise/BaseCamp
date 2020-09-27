class: CommandLineTool
id: sc3_sc3_kmeans.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a transformed SC3 'SingleCellExperiment' object has been
    stored after processed with sc3_calc_transfs()
  type: File
  inputBinding:
    prefix: --input-object-file
- id: in_ks
  doc: A comma-separated string or single value representing the number of clusters
    k to be used for SC3 clustering.
  type: long
  inputBinding:
    prefix: --ks
- id: in_output_object_file
  doc: File name for R object of type 'SingleCellExperiment' from SC3 in which to
    store the kmeans clustering as metadata.
  type: File
  inputBinding:
    prefix: --output-object-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name for R object of type 'SingleCellExperiment' from SC3 in which to
    store the kmeans clustering as metadata.
  type: File
  outputBinding:
    glob: $(inputs.in_output_object_file)
cwlVersion: v1.1
baseCommand:
- sc3-sc3-kmeans.R
