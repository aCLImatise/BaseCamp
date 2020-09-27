class: CommandLineTool
id: KmerStreamJoin.cwl
inputs:
- id: in_output
  doc: "Filename for output\n--verbose            Print output at the end\n"
  type: File
  inputBinding:
    prefix: --output
- id: in_merged_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Filename for output\n--verbose            Print output at the end\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- KmerStreamJoin
