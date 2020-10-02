class: CommandLineTool
id: uniqLine.pl.cwl
inputs:
- id: in_give_column_number
  doc: ': give the column number that are used to check duplication. could be multiple.
    (e.g. Default: --c 1 --c 2 --c 3 for bed files and --c 1 --c 4 --c 5 for gtf files)'
  type: long
  inputBinding:
    prefix: --c
- id: in_input_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- uniqLine.pl
