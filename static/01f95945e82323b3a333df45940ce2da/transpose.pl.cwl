class: CommandLineTool
id: transpose.pl.cwl
inputs:
- id: in_set_delimiter_columns
  doc: ": set the delimiter for the columns to DELIM (default is\ntab).\n"
  type: string
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- transpose.pl
