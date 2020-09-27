class: CommandLineTool
id: genewisedb.cwl
inputs:
- id: in_model
  doc: '[-codon,-gene,-cfreq,-splice,-subs,-indel,-intron,-null]'
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: "[-pretty,-genes,-para,-sum,-cdna,-trans,-ace,]\n..cont  [-gff,-gener,-alb,-pal,-block,-divide]"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genewisedb
