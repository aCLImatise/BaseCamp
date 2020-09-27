class: CommandLineTool
id: scoreAln.pl.cwl
inputs:
- id: in_an_alignment_file
  doc: An alignment file                       [REQUIRED]
  type: boolean
  inputBinding:
    prefix: -i
- id: in_the_format_alignment
  doc: "The format of the alignment             [REQUIRED]\n[CLUSTALW|TBA|MAF]"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_detailed_output_details
  doc: Detailed output (1) or no details, only the score (0)
  type: boolean
  inputBinding:
    prefix: -o
- id: in_which_score_
  doc: "Which score                             [REQUIRED]\n[sop|mpi]"
  type: boolean
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scoreAln.pl
