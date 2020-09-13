class: CommandLineTool
id: ../../../convertOrganismID.pl_file.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- convertOrganismID.pl
- file
