class: CommandLineTool
id: ../../../uniqLine.pl.cwl
inputs:
- id: give_column_number
  doc: ': give the column number that are used to check duplication. could be multiple.
    (e.g. Default: --c 1 --c 2 --c 3 for bed files and --c 1 --c 4 --c 5 for gtf files)'
  type: string
  inputBinding:
    prefix: --c
- id: input_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- uniqLine.pl
