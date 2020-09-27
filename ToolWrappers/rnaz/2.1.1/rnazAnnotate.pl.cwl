class: CommandLineTool
id: rnazAnnotate.pl.cwl
inputs:
- id: in_bed
  doc: "Set the annotation BED file with this option.\n"
  type: boolean
  inputBinding:
    prefix: --bed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rnazAnnotate.pl
