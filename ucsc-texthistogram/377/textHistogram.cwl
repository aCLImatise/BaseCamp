class: CommandLineTool
id: textHistogram.cwl
inputs:
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: data
  doc: are real values (default is integer)
  type: string
  inputBinding:
    prefix: '- Data'
- id: autoscale
  doc: 'N # of bins'
  type: string
  inputBinding:
    prefix: '- autoscale'
- id: prob_values
  doc: (density and cum.distr.) (sets -noStar too)
  type: string
  inputBinding:
    prefix: -probValues
- id: show
  doc: instead of counts
  type: string
  inputBinding:
    prefix: '- show'
- id: skip
  doc: lines before starting, default 0
  type: string
  inputBinding:
    prefix: '- skip'
outputs: []
cwlVersion: v1.1
baseCommand:
- textHistogram
