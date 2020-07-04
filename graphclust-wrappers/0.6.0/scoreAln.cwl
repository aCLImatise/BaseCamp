class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/scoreAln.pl.cwl
inputs:
- id: an_alignment_file
  doc: An alignment file                       [REQUIRED]
  type: boolean
  inputBinding:
    prefix: -i
- id: the_format_alignment
  doc: The format of the alignment             [REQUIRED] [CLUSTALW|TBA|MAF]
  type: boolean
  inputBinding:
    prefix: -f
- id: detailed_output_details
  doc: Detailed output (1) or no details, only the score (0)
  type: boolean
  inputBinding:
    prefix: -o
- id: which_score_
  doc: Which score                             [REQUIRED] [sop|mpi]
  type: boolean
  inputBinding:
    prefix: -s
- id: perl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- scoreAln.pl
