class: CommandLineTool
id: ../../../smudgeplot.py_hetkmers.cwl
inputs:
- id: in_pattern_used_name
  doc: The pattern used to name the output (kmerpairs).
  type: string
  inputBinding:
    prefix: -o
- id: in_middle
  doc: "Get all kmer pairs that are exactly the same but in the middle\nnt. When this\
    \ flag is used, the input dump must be\nalphabetically sorted/ (default: different\
    \ by a SNP at any\nposition).\n"
  type: boolean
  inputBinding:
    prefix: --middle
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- smudgeplot.py
- hetkmers
