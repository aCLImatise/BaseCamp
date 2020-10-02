class: CommandLineTool
id: reportAlignmentDifferences.cwl
inputs:
- id: in_queries
  doc: "-genomic G.fasta\n-positions G.posDB\n-aligns\n-minmatchidentity 94\n-minmatchcoverage\
    \ 90\n-mersize 18\n-ignore 500\n-numthreads 16\n-verbose\n-output Q.sim4db"
  type: long
  inputBinding:
    prefix: -queries
- id: in_o_q
  doc: "-o Q\n"
  type: long
  inputBinding:
    prefix: -i
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- reportAlignmentDifferences
