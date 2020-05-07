class: CommandLineTool
id: scoreAln.pl.cwl
inputs:
- id: i
  doc: An alignment file                       [REQUIRED]
  type: boolean
  inputBinding:
    prefix: -i
- id: f
  doc: The format of the alignment             [REQUIRED] [CLUSTALW|TBA|MAF]
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: Detailed output (1) or no details, only the score (0)
  type: boolean
  inputBinding:
    prefix: -o
- id: s
  doc: Which score                             [REQUIRED] [sop|mpi]
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- scoreAln.pl
