class: CommandLineTool
id: garnett_get_std_output.R.cwl
inputs:
- id: input_object
  doc: Path to the input CDS object in .rds format
  type: string
  inputBinding:
    prefix: --input-object
- id: cell_id_field
  doc: Column name of the cell id annotations. If not supplied, it is assumed that
    cell ids are represented by index
  type: string
  inputBinding:
    prefix: --cell-id-field
- id: predicted_cell_type_field
  doc: Column name of the predicted cell type annotation
  type: string
  inputBinding:
    prefix: --predicted-cell-type-field
- id: classifier
  doc: Path to the classifier object in .rds format (Optional; required to add dataset
    of origin to output table)
  type: string
  inputBinding:
    prefix: --classifier
- id: output_file_path
  doc: Path to the produced output file in .tsv format
  type: string
  inputBinding:
    prefix: --output-file-path
outputs: []
cwlVersion: v1.1
baseCommand:
- garnett_get_std_output.R
