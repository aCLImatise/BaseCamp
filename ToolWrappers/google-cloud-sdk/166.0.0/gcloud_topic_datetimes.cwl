class: CommandLineTool
id: gcloud_topic_datetimes.cwl
inputs:
- id: in_poney_two_mthreedtfourhfivemsixdot_sevens
  doc: +p1y2m3dT4h5m6.7s
  type: boolean
  inputBinding:
    prefix: -P1Y2M3DT4H5M6.7S
- id: in_two_five_sep_two_zero_zero_three
  doc: Sep-25-2003
  type: long
  inputBinding:
    position: 0
- id: in_other_date_separators
  doc: 'other date separators:'
  type: long
  inputBinding:
    position: 1
- id: in_string_dot
  doc: "For example:\no 1 month ago: -p1m\no 30 minutes from now: +pt30m\no 2 hours\
    \ and 30 minutes ago: -p2h30m\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- topic
- datetimes
