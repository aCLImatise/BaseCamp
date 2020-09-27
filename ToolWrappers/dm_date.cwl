class: CommandLineTool
id: dm_date.cwl
inputs:
- id: in_h_slash_help
  doc: ': Print help.'
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_d_slash_date
  doc: ': Print information about that date.'
  type: string
  inputBinding:
    prefix: -d/--date
- id: in_f_slash_file
  doc: ': Print out each date (1/line) in FILE'
  type: File
  inputBinding:
    prefix: -f/--file
- id: in_r_slash_reference
  doc: ": Print out the last modification\ntime of FILE"
  type: File
  inputBinding:
    prefix: -r/--reference
- id: in_r_slash_rfc_two_eight_two_two
  doc: ": Print the date in RFC 2822 format\n(any +FORMAT string is ignored)\nMon,\
    \ 07 Aug 2006 12:34:56 -0600"
  type: boolean
  inputBinding:
    prefix: -R/--rfc-2822
- id: in_us_lash_utc_slash_universal
  doc: ":\nConverts date(s) to UT time.\n"
  type: boolean
  inputBinding:
    prefix: -u/--utc/--universal
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_f_slash_file
  doc: ': Print out each date (1/line) in FILE'
  type: File
  outputBinding:
    glob: $(inputs.in_f_slash_file)
- id: out_r_slash_reference
  doc: ": Print out the last modification\ntime of FILE"
  type: File
  outputBinding:
    glob: $(inputs.in_r_slash_reference)
cwlVersion: v1.1
baseCommand:
- dm_date
