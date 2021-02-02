class: CommandLineTool
id: histogram.py.cwl
inputs:
- id: in_agg
  doc: "Two column input format, space seperated with\nvalue<space>key"
  type: boolean
  inputBinding:
    prefix: --agg
- id: in_agg_key_value
  doc: "Two column input format, space seperated with\nkey<space>value"
  type: boolean
  inputBinding:
    prefix: --agg-key-value
- id: in_min
  doc: minimum value for graph
  type: long
  inputBinding:
    prefix: --min
- id: in_max
  doc: maximum value for graph
  type: long
  inputBinding:
    prefix: --max
- id: in_buckets
  doc: Number of buckets to use for the histogram
  type: long
  inputBinding:
    prefix: --buckets
- id: in_custom_buckets
  doc: Comma seperated list of bucket edges for the histogram
  type: string
  inputBinding:
    prefix: --custom-buckets
- id: in_no_mvs_d
  doc: "Disable the calculation of Mean, Variance and SD\n(improves performance)"
  type: boolean
  inputBinding:
    prefix: --no-mvsd
- id: in_bucket_format
  doc: format for bucket numbers
  type: string
  inputBinding:
    prefix: --bucket-format
- id: in_percentage
  doc: List percentage for each bar
  type: boolean
  inputBinding:
    prefix: --percentage
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_data
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
- histogram.py
