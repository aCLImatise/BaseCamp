class: CommandLineTool
id: xsv_fixlengths.cwl
inputs:
- id: in_length
  doc: "Forcefully set the length of each record. If a\nrecord is not the size given,\
    \ then it is truncated\nor expanded as appropriate."
  type: long?
  inputBinding:
    prefix: --length
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
- fixlengths
