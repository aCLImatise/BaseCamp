class: CommandLineTool
id: collapse_reads_md.pl.cwl
inputs:
- id: in_outputs_progress
  doc: outputs progress
  type: boolean?
  inputBinding:
    prefix: -a
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- collapse_reads_md.pl
