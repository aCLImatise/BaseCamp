class: CommandLineTool
id: heatmap.py.cwl
inputs:
- id: in_secondary_model_tar
  doc: "secondary model tar if combining the prediction of two\ndifferent phenotype\
    \ collections into one heatmap"
  type: string
  inputBinding:
    prefix: --secondary_model_tar
- id: in_row_method
  doc: method to use for the row dendrogram
  type: string
  inputBinding:
    prefix: --row_method
- id: in_column_method
  doc: method to use for the column dendrogram
  type: string
  inputBinding:
    prefix: --column_method
- id: in_row_metric
  doc: metric to use for the row dendrogram
  type: string
  inputBinding:
    prefix: --row_metric
- id: in_column_metric
  doc: metric to use for the column dendrogram
  type: string
  inputBinding:
    prefix: --column_metric
- id: in_sample_f
  doc: "restrict phenotype predictions to the sample found in\n<sample_file>\n"
  type: string
  inputBinding:
    prefix: --sample_f
- id: in_data_f
  doc: tab delimited file with row and column names
  type: string
  inputBinding:
    position: 0
- id: in_out_f
  doc: output image (png) file name
  type: string
  inputBinding:
    position: 1
- id: in_model_tar
  doc: phenotype model archive
  type: string
  inputBinding:
    position: 2
- id: in_color_f
  doc: file with r g b colors to be used
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- heatmap.py
