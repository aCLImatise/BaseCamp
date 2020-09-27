class: CommandLineTool
id: seqhax_trunc.cwl
inputs:
- id: in_fixed_integer_length
  doc: Fixed (integer) length to truncate at.
  type: long
  inputBinding:
    prefix: -l
- id: in_truncate_prop_length
  doc: Truncate at PROP * length bases
  type: long
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqhax
- trunc
