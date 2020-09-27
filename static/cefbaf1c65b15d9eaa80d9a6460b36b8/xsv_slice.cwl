class: CommandLineTool
id: xsv_slice.cwl
inputs:
- id: in_start
  doc: The index of the record to slice from.
  type: string
  inputBinding:
    prefix: --start
- id: in_end
  doc: The index of the record to slice to.
  type: string
  inputBinding:
    prefix: --end
- id: in_len
  doc: "The length of the slice (can be used instead\nof --end)."
  type: long
  inputBinding:
    prefix: --len
- id: in_index
  doc: Slice a single record (shortcut for -s N -l 1).
  type: long
  inputBinding:
    prefix: --index
- id: in_output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
- id: in_no_headers
  doc: "When set, the first row will not be interpreted\nas headers. Otherwise, the\
    \ first row will always\nappear in the output as the header row."
  type: boolean
  inputBinding:
    prefix: --no-headers
- id: in_delimiter
  doc: "The field delimiter for reading CSV data.\nMust be a single character. (default:\
    \ ,)\n"
  type: string
  inputBinding:
    prefix: --delimiter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Write output to <file> instead of stdout.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- xsv
- slice
