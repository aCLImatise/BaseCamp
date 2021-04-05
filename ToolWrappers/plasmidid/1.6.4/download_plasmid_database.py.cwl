class: CommandLineTool
id: download_plasmid_database.py.cwl
inputs:
- id: in_output
  doc: "REQUIRED. Output directory to extract plasmid database\n"
  type: Directory?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "REQUIRED. Output directory to extract plasmid database\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidid:1.6.4--1
cwlVersion: v1.1
baseCommand:
- download_plasmid_database.py
