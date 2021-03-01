class: CommandLineTool
id: date.cwl
inputs:
- id: in_date
  doc: display time described by STRING, not 'now'
  type: string?
  inputBinding:
    prefix: --date
- id: in_debug
  doc: "annotate the parsed date,\nand warn about questionable usage to stderr"
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_file
  doc: like --date; once for each line of DATEFILE
  type: File?
  inputBinding:
    prefix: --file
- id: in_output_datetime_formatfmt
  doc: "[FMT], --iso-8601[=FMT]  output date/time in ISO 8601 format.\nFMT='date'\
    \ for date only (the default),\n'hours', 'minutes', 'seconds', or 'ns'\nfor date\
    \ and time to the indicated precision.\nExample: 2006-08-14T02:34:56-06:00"
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_rfc_email
  doc: "output date and time in RFC 5322 format.\nExample: Mon, 14 Aug 2006 02:34:56\
    \ -0600"
  type: boolean?
  inputBinding:
    prefix: --rfc-email
- id: in_rfc_three_three_three_nine
  doc: "output date/time in RFC 3339 format.\nFMT='date', 'seconds', or 'ns'\nfor\
    \ date and time to the indicated precision.\nExample: 2006-08-14 02:34:56-06:00"
  type: long?
  inputBinding:
    prefix: --rfc-3339
- id: in_reference
  doc: display the last modification time of FILE
  type: File?
  inputBinding:
    prefix: --reference
- id: in_set
  doc: set time described by STRING
  type: string?
  inputBinding:
    prefix: --set
- id: in_universal
  doc: print or set Coordinated Universal Time (UTC)
  type: boolean?
  inputBinding:
    prefix: --universal
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- date
