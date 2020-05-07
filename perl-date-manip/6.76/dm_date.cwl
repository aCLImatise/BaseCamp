class: CommandLineTool
id: dm_date.cwl
inputs:
- id: r
  doc: '/--rfc-2822    : Print the date in RFC 2822 format (any +FORMAT string is
    ignored) Mon, 07 Aug 2006 12:34:56 -0600'
  type: boolean
  inputBinding:
    prefix: -R
- id: u
  doc: '/--utc/--universal: Converts date(s) to UT time.'
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- dm_date
