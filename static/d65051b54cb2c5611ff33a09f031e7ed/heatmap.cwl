class: CommandLineTool
id: heatmap.py.cwl
inputs:
- id: data_f
  doc: tab delimited file with row and column names
  type: string
  inputBinding:
    position: 0
- id: out_f
  doc: output image (png) file name
  type: string
  inputBinding:
    position: 1
- id: model_tar
  doc: phenotype model archive
  type: string
  inputBinding:
    position: 2
- id: color_f
  doc: file with r g b colors to be used
  type: string
  inputBinding:
    position: 3
- id: secondary_model_tar
  doc: secondary model tar if combining the prediction of two different phenotype
    collections into one heatmap
  type: string
  inputBinding:
    prefix: --secondary_model_tar
- id: row_method
  doc: method to use for the row dendrogram
  type: string
  inputBinding:
    prefix: --row_method
- id: column_method
  doc: method to use for the column dendrogram
  type: string
  inputBinding:
    prefix: --column_method
- id: row_metric
  doc: metric to use for the row dendrogram
  type: string
  inputBinding:
    prefix: --row_metric
- id: column_metric
  doc: metric to use for the column dendrogram
  type: string
  inputBinding:
    prefix: --column_metric
- id: sample_f
  doc: restrict phenotype predictions to the sample found in <sample_file>
  type: string
  inputBinding:
    prefix: --sample_f
outputs: []
cwlVersion: v1.1
baseCommand:
- heatmap.py
