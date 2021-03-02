class: CommandLineTool
id: fastx_quality_stats.cwl
inputs:
- id: in_o
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: File?
  inputBinding:
    prefix: -i
- id: in_n
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_column
  doc: = column number (1 to 36 for a 36-cycles read solexa file)
  type: string
  inputBinding:
    position: 0
- id: in_var_4
  doc: = number of bases found in this column.
  type: string
  inputBinding:
    position: 1
- id: in_var_5
  doc: = Lowest quality score value found in this column.
  type: long
  inputBinding:
    position: 2
- id: in_var_6
  doc: = Highest quality score value found in this column.
  type: long
  inputBinding:
    position: 3
- id: in_var_7
  doc: = Sum of quality score values for this column.
  type: string
  inputBinding:
    position: 4
- id: in_var_8
  doc: = Mean quality score value for this column.
  type: string
  inputBinding:
    position: 5
- id: in_var_9
  doc: = 1st quartile quality score.
  type: long
  inputBinding:
    position: 6
- id: in_var_10
  doc: = Median quality score.
  type: string
  inputBinding:
    position: 7
- id: in_var_11
  doc: = 3rd quartile quality score.
  type: long
  inputBinding:
    position: 8
- id: in_var_12
  doc: = Inter-Quartile range (Q3-Q1).
  type: string
  inputBinding:
    position: 9
- id: in_var_13
  doc: = 'Left-Whisker' value (for boxplotting).
  type: string
  inputBinding:
    position: 10
- id: in_var_14
  doc: = 'Right-Whisker' value (for boxplotting).
  type: string
  inputBinding:
    position: 11
- id: in_max_count
  doc: 'For each nucleotide in the cycle (ALL/A/C/G/T/N):'
  type: long
  inputBinding:
    position: 0
- id: in_var_16
  doc: = number of bases found in this column.
  type: string
  inputBinding:
    position: 1
- id: in_var_17
  doc: = Lowest quality score value found in this column.
  type: long
  inputBinding:
    position: 2
- id: in_var_18
  doc: = Highest quality score value found in this column.
  type: long
  inputBinding:
    position: 3
- id: in_var_19
  doc: = Sum of quality score values for this column.
  type: string
  inputBinding:
    position: 4
- id: in_var_20
  doc: = Mean quality score value for this column.
  type: string
  inputBinding:
    position: 5
- id: in_var_21
  doc: = 1st quartile quality score.
  type: long
  inputBinding:
    position: 6
- id: in_var_22
  doc: = Median quality score.
  type: string
  inputBinding:
    position: 7
- id: in_var_23
  doc: = 3rd quartile quality score.
  type: long
  inputBinding:
    position: 8
- id: in_var_24
  doc: = Inter-Quartile range (Q3-Q1).
  type: string
  inputBinding:
    position: 9
- id: in_var_25
  doc: = 'Left-Whisker' value (for boxplotting).
  type: string
  inputBinding:
    position: 10
- id: in_var_26
  doc: = 'Right-Whisker' value (for boxplotting).
  type: string
  inputBinding:
    position: 11
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastx_quality_stats
