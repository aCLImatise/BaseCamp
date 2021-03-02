class: CommandLineTool
id: summary_get_organelle_output.py.cwl
inputs:
- id: in_output_csv_file
  doc: Output csv file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_list_of_sample_folders
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_csv_file
  doc: Output csv file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_csv_file)
hints: []
cwlVersion: v1.1
baseCommand:
- summary_get_organelle_output.py
