class: CommandLineTool
id: vtools_liftover.cwl
inputs:
- id: in_flip
  doc: "Flip primary and alternative reference genomes so that\nthe specified build\
    \ will become the primary reference\ngenome of the project."
  type: boolean?
  inputBinding:
    prefix: --flip
- id: in_verbosity
  doc: "Output error and warning (0), info (1), debug (2) and\ntrace (3) information\
    \ to standard output (default to\n1).\n"
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_build
  doc: Name of the alternative reference genome
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
- vtools
- liftover
