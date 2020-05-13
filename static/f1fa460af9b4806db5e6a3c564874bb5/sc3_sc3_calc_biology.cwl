class: CommandLineTool
id: sc3_sc3_calc_biology.R.cwl
inputs:
- id: input_object_file
  doc: File name in which a SC3 'SingleCellExperiment' object has been stored after
    kmeans clustering.
  type: string
  inputBinding:
    prefix: --input-object-file
- id: output_text_file
  doc: A text file file to write marker matrices to. A 'k' column will defined from
    which value of 'k' the markers are derived.
  type: string
  inputBinding:
    prefix: --output-text-file
- id: ks
  doc: A comma-separated string or single value representing the number of clusters
    k to be used for SC3 clustering.
  type: string
  inputBinding:
    prefix: --ks
- id: regime
  doc: defines what biological analysis to perform. "marker" for marker genes, "de"
    for differentiall expressed genes and "outl" for outlier cells.
  type: string
  inputBinding:
    prefix: --regime
- id: output_object_file
  doc: File name for R object of type 'SingleCellExperiment' from SC3 in which to
    store the consensus matrix.
  type: string
  inputBinding:
    prefix: --output-object-file
outputs: []
cwlVersion: v1.1
baseCommand:
- sc3-sc3-calc-biology.R
