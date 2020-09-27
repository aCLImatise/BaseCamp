class: CommandLineTool
id: FCStxtMergeDownsample.py.cwl
inputs:
- id: in_file_location_text
  doc: File location for the text files.
  type: File
  inputBinding:
    prefix: -i
- id: in_name_output_file
  doc: Name of the output file.
  type: File
  inputBinding:
    prefix: -o
- id: in_specify_column_keep
  doc: Specify which column to keep in output file
  type: File
  inputBinding:
    prefix: -c
- id: in_how_much_file
  doc: "How much of each file to keep\n"
  type: File
  inputBinding:
    prefix: -d
- id: in_fcs_txt_merge
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_file
  doc: Name of the output file.
  type: File
  outputBinding:
    glob: $(inputs.in_name_output_file)
- id: out_specify_column_keep
  doc: Specify which column to keep in output file
  type: File
  outputBinding:
    glob: $(inputs.in_specify_column_keep)
cwlVersion: v1.1
baseCommand:
- FCStxtMergeDownsample.py
