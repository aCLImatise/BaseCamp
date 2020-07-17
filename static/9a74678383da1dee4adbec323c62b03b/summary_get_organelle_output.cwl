class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/summary_get_organelle_output.py.cwl
inputs:
- id: output_csv_file
  doc: Output csv file.
  type: string
  inputBinding:
    prefix: -o
- id: list_of_sample_folders
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- summary_get_organelle_output.py
