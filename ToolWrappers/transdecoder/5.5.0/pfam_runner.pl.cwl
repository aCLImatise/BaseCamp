class: CommandLineTool
id: pfam_runner.pl.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pfam_runner.pl
