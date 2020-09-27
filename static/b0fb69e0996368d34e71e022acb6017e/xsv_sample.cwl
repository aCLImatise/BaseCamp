class: CommandLineTool
id: xsv_sample.cwl
inputs:
- id: in_output
  doc: Write output to <file> instead of stdout.
  type: File
  inputBinding:
    prefix: --output
- id: in_no_headers
  doc: "When set, the first row will be consider as part of\nthe population to sample\
    \ from. (When not set, the\nfirst row is the header row and will always appear\n\
    in the output.)"
  type: boolean
  inputBinding:
    prefix: --no-headers
- id: in_delimiter
  doc: "The field delimiter for reading CSV data.\nMust be a single character. (default:\
    \ ,)\n"
  type: string
  inputBinding:
    prefix: --delimiter
- id: in_sample_size
  doc: ''
  type: long
  inputBinding:
    position: 0
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
- sample
