class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fastx_quality_stats.cwl
inputs:
- id: n
  doc: ''
  type: boolean
  inputBinding:
    prefix: -N
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: count
  doc: = number of bases found in this column.
  type: string
  inputBinding:
    position: 0
- id: min
  doc: = Lowest quality score value found in this column.
  type: long
  inputBinding:
    position: 1
- id: max
  doc: = Highest quality score value found in this column.
  type: long
  inputBinding:
    position: 2
- id: sum
  doc: = Sum of quality score values for this column.
  type: string
  inputBinding:
    position: 3
- id: mean
  doc: = Mean quality score value for this column.
  type: string
  inputBinding:
    position: 4
- id: q_one
  doc: = 1st quartile quality score.
  type: string
  inputBinding:
    position: 5
- id: med
  doc: = Median quality score.
  type: string
  inputBinding:
    position: 6
- id: q_three
  doc: = 3rd quartile quality score.
  type: string
  inputBinding:
    position: 7
- id: iqr
  doc: = Inter-Quartile range (Q3-Q1).
  type: string
  inputBinding:
    position: 8
- id: lw
  doc: = 'Left-Whisker' value (for boxplotting).
  type: string
  inputBinding:
    position: 9
- id: rw
  doc: = 'Right-Whisker' value (for boxplotting).
  type: string
  inputBinding:
    position: 10
outputs: []
cwlVersion: v1.1
baseCommand:
- fastx_quality_stats
