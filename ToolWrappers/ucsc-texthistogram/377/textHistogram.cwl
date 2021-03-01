class: CommandLineTool
id: textHistogram.cwl
inputs:
- id: in_binsize
  doc: '- Size of bins, default 1'
  type: long?
  inputBinding:
    prefix: -binSize
- id: in_max_bin_count
  doc: '- Maximum # of bins, default 25'
  type: long?
  inputBinding:
    prefix: -maxBinCount
- id: in_min_val
  doc: '- Minimum value to put in histogram, default 0'
  type: long?
  inputBinding:
    prefix: -minVal
- id: in_log
  doc: '- Do log transformation before plotting'
  type: boolean?
  inputBinding:
    prefix: -log
- id: in_no_star
  doc: "- Don't draw asterisks"
  type: boolean?
  inputBinding:
    prefix: -noStar
- id: in_col
  doc: '- Which column to use. Default 1'
  type: long?
  inputBinding:
    prefix: -col
- id: in_ave_col
  doc: "- A second column to average over. The averages\nwill be output in place of\
    \ counts of primary column."
  type: string?
  inputBinding:
    prefix: -aveCol
- id: in_real
  doc: '- Data input are real values (default is integer)'
  type: boolean?
  inputBinding:
    prefix: -real
- id: in_autoscale
  doc: '- autoscale to N # of bins'
  type: string?
  inputBinding:
    prefix: -autoScale
- id: in_prob_values
  doc: '- show prob-Values (density and cum.distr.) (sets -noStar too)'
  type: boolean?
  inputBinding:
    prefix: -probValues
- id: in_freq
  doc: '- show frequences instead of counts'
  type: boolean?
  inputBinding:
    prefix: -freq
- id: in_skip
  doc: '- skip N lines before starting, default 0'
  type: long?
  inputBinding:
    prefix: -skip
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- textHistogram
