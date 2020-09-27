class: CommandLineTool
id: download_plasmid_database.py.cwl
inputs:
- id: in_output
  doc: "REQUIRED. Output directory to extract plasmid database\n"
  type: Directory
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "REQUIRED. Output directory to extract plasmid database\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- download_plasmid_database.py
