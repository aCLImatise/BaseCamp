class: CommandLineTool
id: genewisedb.cwl
inputs:
- id: in_output
  doc: "[-pretty,-genes,-para,-sum,-cdna,-trans,-ace,]\n..cont  [-gff,-gener,-alb,-pal,-block,-divide]"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- genewisedb
