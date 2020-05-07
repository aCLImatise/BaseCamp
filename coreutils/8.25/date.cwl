class: CommandLineTool
id: date.cwl
inputs:
- id: date
  doc: display time described by STRING, not 'now'
  type: string
  inputBinding:
    prefix: --date
- id: file
  doc: like --date; once for each line of DATEFILE
  type: string
  inputBinding:
    prefix: --file
- id: i
  doc: "[FMT], --iso-8601[=FMT]  output date/time in ISO 8601 format. FMT='date' for\
    \ date only (the default), 'hours', 'minutes', 'seconds', or 'ns' for date and\
    \ time to the indicated precision. Example: 2006-08-14T02:34:56-0600"
  type: boolean
  inputBinding:
    prefix: -I
- id: rfc_2822
  doc: 'output date and time in RFC 2822 format. Example: Mon, 14 Aug 2006 02:34:56
    -0600'
  type: boolean
  inputBinding:
    prefix: --rfc-2822
- id: rfc_3339
  doc: "output date/time in RFC 3339 format. FMT='date', 'seconds', or 'ns' for date\
    \ and time to the indicated precision. Example: 2006-08-14 02:34:56-06:00"
  type: string
  inputBinding:
    prefix: --rfc-3339
- id: reference
  doc: display the last modification time of FILE
  type: File
  inputBinding:
    prefix: --reference
- id: set
  doc: set time described by STRING
  type: string
  inputBinding:
    prefix: --set
- id: universal
  doc: print or set Coordinated Universal Time (UTC)
  type: boolean
  inputBinding:
    prefix: --universal
outputs: []
cwlVersion: v1.1
baseCommand:
- date
