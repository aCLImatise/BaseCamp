class: CommandLineTool
id: ../../../genewisedb.cwl
inputs:
- id: in_protein
  doc: '[-s,-t,-g,-e,-m]'
  type: string
  inputBinding:
    position: 0
- id: in_hmm
  doc: '[-hmmer,-hname]'
  type: string
  inputBinding:
    position: 1
- id: in_model
  doc: '[-codon,-gene,-cfreq,-splice,-subs,-indel,-intron,-null]'
  type: string
  inputBinding:
    position: 2
- id: in_alg
  doc: '[-kbyte,-alg,-aalg,-aln,-noh]'
  type: string
  inputBinding:
    position: 3
- id: in_output
  doc: "[-pretty,-genes,-para,-sum,-cdna,-trans,-ace,]\n..cont  [-gff,-gener,-alb,-pal,-block,-divide]"
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genewisedb
