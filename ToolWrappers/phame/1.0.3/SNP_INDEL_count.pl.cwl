class: CommandLineTool
id: SNP_INDEL_count.pl.cwl
inputs:
- id: in_perl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- SNP_INDEL_count.pl
