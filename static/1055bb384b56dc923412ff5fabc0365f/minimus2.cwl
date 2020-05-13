class: CommandLineTool
id: minimus2.cwl
inputs:
- id: d
  doc: '=<n>         \       # Number of sequences in the 1st assembly ; (Required)'
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: '=<n>          \       # Assembly 1 vs 2 minimum overlap (Default 40bp)'
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: '=<f>          \       # Maximum consensus error (0..1) (Default 0.06)'
  type: string
  inputBinding:
    prefix: -D
- id: d
  doc: '=<n>            \       # Minimum overlap percent identity for alignments
    (Default 94)'
  type: long
  inputBinding:
    prefix: -D
- id: d
  doc: '=<n>                  # Maximum sequence trimming length (Default 20bp)'
  type: long
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- minimus2
