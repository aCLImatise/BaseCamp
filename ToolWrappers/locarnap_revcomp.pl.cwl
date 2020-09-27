class: CommandLineTool
id: locarnap_revcomp.pl.cwl
inputs:
- id: in_man
  doc: Full documentation
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- locarnap-revcomp.pl
