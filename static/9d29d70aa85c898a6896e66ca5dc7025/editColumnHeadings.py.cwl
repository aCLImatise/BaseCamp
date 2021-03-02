class: CommandLineTool
id: editColumnHeadings.py.cwl
inputs:
- id: in_file_location_text
  doc: File location for the text file.
  type: File?
  inputBinding:
    prefix: -i
- id: in_columns_keep_order
  doc: Columns to keep in the order to keep them in.
  type: string?
  inputBinding:
    prefix: -c
- id: in_column_names_renaming
  doc: Column names if renaming.
  type: string?
  inputBinding:
    prefix: -n
- id: in_name_output_file
  doc: Name of the output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_output_file
  doc: Cut, rearrange and rename columns in a tab-separated file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- editColumnHeadings.py
