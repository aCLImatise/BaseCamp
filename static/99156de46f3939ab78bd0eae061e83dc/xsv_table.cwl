class: CommandLineTool
id: xsv_table.cwl
inputs:
- id: in_width
  doc: "The minimum width of each column.\n[default: 2]"
  type: long?
  inputBinding:
    prefix: --width
- id: in_pad
  doc: "The minimum number of spaces between each column.\n[default: 2]"
  type: long?
  inputBinding:
    prefix: --pad
- id: in_condense
  doc: "Limits the length of each field to the value\nspecified. If the field is UTF-8\
    \ encoded, then\n<arg> refers to the number of code points.\nOtherwise, it refers\
    \ to the number of bytes."
  type: long?
  inputBinding:
    prefix: --condense
- id: in_output
  doc: Write output to <file> instead of stdout.
  type: File?
  inputBinding:
    prefix: --output
- id: in_delimiter
  doc: "The field delimiter for reading CSV data.\nMust be a single character. (default:\
    \ ,)\n"
  type: string?
  inputBinding:
    prefix: --delimiter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Write output to <file> instead of stdout.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- xsv
- table
