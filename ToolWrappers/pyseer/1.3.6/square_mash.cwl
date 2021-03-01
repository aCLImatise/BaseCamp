class: CommandLineTool
id: square_mash.cwl
inputs:
- id: in_classic
  doc: Output table in a format suitable for R_mds.pl
  type: boolean?
  inputBinding:
    prefix: --classic
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- square_mash
