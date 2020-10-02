class: CommandLineTool
id: xsv_sort.cwl
inputs:
- id: in_select
  doc: "Select a subset of columns to sort.\nSee 'xsv select --help' for the format\
    \ details."
  type: string
  inputBinding:
    prefix: --select
- id: in_output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
- id: in_no_headers
  doc: "When set, the first row will not be interpreted\nas headers. Namely, it will\
    \ be sorted with the rest\nof the rows. Otherwise, the first row will always\n\
    appear as the header row in the output."
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
- sort
