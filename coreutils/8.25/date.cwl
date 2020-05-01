#!/usr/bin/env cwl-runner

baseCommand:
- date
class: CommandLineTool
cwlVersion: v1.0
id: date
inputs:
- doc: display time described by STRING, not 'now'
  id: date
  inputBinding:
    prefix: --date
  type: string
- doc: like --date; once for each line of DATEFILE
  id: file
  inputBinding:
    prefix: --file
  type: string
- doc: "[FMT], --iso-8601[=FMT]  output date/time in ISO 8601 format. FMT='date' for\
    \ date only (the default), 'hours', 'minutes', 'seconds', or 'ns' for date and\
    \ time to the indicated precision. Example: 2006-08-14T02:34:56-0600"
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: 'output date and time in RFC 2822 format. Example: Mon, 14 Aug 2006 02:34:56
    -0600'
  id: rfc_2822
  inputBinding:
    prefix: --rfc-2822
  type: boolean
- doc: "output date/time in RFC 3339 format. FMT='date', 'seconds', or 'ns' for date\
    \ and time to the indicated precision. Example: 2006-08-14 02:34:56-06:00"
  id: rfc_3339
  inputBinding:
    prefix: --rfc-3339
  type: string
- doc: display the last modification time of FILE
  id: reference
  inputBinding:
    prefix: --reference
  type: File
- doc: set time described by STRING
  id: set
  inputBinding:
    prefix: --set
  type: string
- doc: print or set Coordinated Universal Time (UTC)
  id: universal
  inputBinding:
    prefix: --universal
  type: boolean
