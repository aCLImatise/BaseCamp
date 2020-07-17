class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/textHistogram.cwl
inputs:
- id: binsize
  doc: '- Size of bins, default 1'
  type: string
  inputBinding:
    prefix: -binSize
- id: max_bin_count
  doc: '- Maximum # of bins, default 25'
  type: string
  inputBinding:
    prefix: -maxBinCount
- id: min_val
  doc: '- Minimum value to put in histogram, default 0'
  type: string
  inputBinding:
    prefix: -minVal
- id: log
  doc: '- Do log transformation before plotting'
  type: boolean
  inputBinding:
    prefix: -log
- id: no_star
  doc: "- Don't draw asterisks"
  type: boolean
  inputBinding:
    prefix: -noStar
- id: col
  doc: '- Which column to use. Default 1'
  type: string
  inputBinding:
    prefix: -col
- id: ave_col
  doc: '- A second column to average over. The averages will be output in place of
    counts of primary column.'
  type: string
  inputBinding:
    prefix: -aveCol
- id: real
  doc: '- Data input are real values (default is integer)'
  type: boolean
  inputBinding:
    prefix: -real
- id: autoscale
  doc: '- autoscale to N # of bins'
  type: string
  inputBinding:
    prefix: -autoScale
- id: prob_values
  doc: '- show prob-Values (density and cum.distr.) (sets -noStar too)'
  type: boolean
  inputBinding:
    prefix: -probValues
- id: freq
  doc: '- show frequences instead of counts'
  type: boolean
  inputBinding:
    prefix: -freq
- id: skip
  doc: '- skip N lines before starting, default 0'
  type: string
  inputBinding:
    prefix: -skip
- id: in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- textHistogram
