class: CommandLineTool
id: dm_date.cwl
inputs:
- id: in_date
  doc: ': Print information about that date.'
  type: string?
  inputBinding:
    prefix: --date
- id: in_file
  doc: ': Print out each date (1/line) in FILE'
  type: File?
  inputBinding:
    prefix: --file
- id: in_reference
  doc: ": Print out the last modification\ntime of FILE"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_rfc_two_eight_two_two
  doc: ": Print the date in RFC 2822 format\n(any +FORMAT string is ignored)\nMon,\
    \ 07 Aug 2006 12:34:56 -0600"
  type: boolean?
  inputBinding:
    prefix: --rfc-2822
- id: in_universal
  doc: ":\nConverts date(s) to UT time.\n"
  type: boolean?
  inputBinding:
    prefix: --universal
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file
  doc: ': Print out each date (1/line) in FILE'
  type: File?
  outputBinding:
    glob: $(inputs.in_file)
- id: out_reference
  doc: ": Print out the last modification\ntime of FILE"
  type: File?
  outputBinding:
    glob: $(inputs.in_reference)
hints: []
cwlVersion: v1.1
baseCommand:
- dm_date
