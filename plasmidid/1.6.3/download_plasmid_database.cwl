class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/download_plasmid_database.py.cwl
inputs:
- id: output
  doc: REQUIRED. Output directory to extract plasmid database
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- download_plasmid_database.py
