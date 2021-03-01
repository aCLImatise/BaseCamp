class: CommandLineTool
id: xsv_index.cwl
inputs:
- id: in_output
  doc: "Write index to <file> instead of <input>.idx.\nGenerally, this is not currently\
    \ useful because\nthe only way to use an index is if it is specially\nnamed <input>.idx."
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
hints: []
cwlVersion: v1.1
baseCommand:
- xsv
- index
