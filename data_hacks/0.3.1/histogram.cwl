class: CommandLineTool
id: histogram.py.cwl
inputs:
- id: agg
  doc: Two column input format, space seperated with value<space>key
  type: boolean
  inputBinding:
    prefix: --agg
- id: agg_key_value
  doc: Two column input format, space seperated with key<space>value
  type: boolean
  inputBinding:
    prefix: --agg-key-value
- id: min
  doc: minimum value for graph
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: maximum value for graph
  type: long
  inputBinding:
    prefix: --max
- id: buckets
  doc: Number of buckets to use for the histogram
  type: string
  inputBinding:
    prefix: --buckets
- id: custom_buckets
  doc: Comma seperated list of bucket edges for the histogram
  type: string
  inputBinding:
    prefix: --custom-buckets
- id: no_mvs_d
  doc: Disable the calculation of Mean, Variance and SD (improves performance)
  type: boolean
  inputBinding:
    prefix: --no-mvsd
- id: bucket_format
  doc: format for bucket numbers
  type: string
  inputBinding:
    prefix: --bucket-format
- id: percentage
  doc: List percentage for each bar
  type: boolean
  inputBinding:
    prefix: --percentage
outputs: []
cwlVersion: v1.1
baseCommand:
- histogram.py
