class: CommandLineTool
id: splitMfasta.pl.cwl
inputs:
- id: in_s_slash_input_dot_split_dot_one_dot_fa
  doc: s/input.split.2.fa
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- splitMfasta.pl
