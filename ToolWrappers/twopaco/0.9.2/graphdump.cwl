class: CommandLineTool
id: graphdump.cwl
inputs:
- id: in__kvalue_integerrequired
  doc: ",  --kvalue <integer>\n(required)  Value of k"
  type: long
  inputBinding:
    prefix: -k
- id: in__seqfile_accepted
  doc: "<>,  --seqfile <>  (accepted multiple times)\nsequences file name"
  type: boolean
  inputBinding:
    prefix: -s
- id: in__format_seqgroupdotgfagfafastarequired
  doc: ",  --format <seq|group|dot|gfa1|gfa2\n|fasta>\n(required)  Output format"
  type: long
  inputBinding:
    prefix: -f
- id: in_prefix
  doc: "Add a prefix to segments in GFA (in case if you have genomes with\nidentical\
    \ FASTA headers)"
  type: boolean
  inputBinding:
    prefix: --prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- graphdump
