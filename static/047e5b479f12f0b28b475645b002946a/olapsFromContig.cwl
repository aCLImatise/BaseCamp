class: CommandLineTool
id: olapsFromContig.cwl
inputs:
- id: in_set_maximum_default
  doc: Set maximum overlap error, default 0.05
  type: double?
  inputBinding:
    prefix: -e
- id: in_set_minimum_overlap
  doc: "Set minimum overlap length, default 20\nConverts bank CTG messages to overlaps.\n"
  type: long?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- olapsFromContig
