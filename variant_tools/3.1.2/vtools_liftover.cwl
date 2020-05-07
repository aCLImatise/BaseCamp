class: CommandLineTool
id: vtools_liftover.cwl
inputs:
- id: build
  doc: Name of the alternative reference genome
  type: string
  inputBinding:
    position: 0
- id: flip
  doc: Flip primary and alternative reference genomes so that the specified build
    will become the primary reference genome of the project.
  type: boolean
  inputBinding:
    prefix: --flip
- id: v
  doc: '{0,1,2,3}, --verbosity {0,1,2,3} Output error and warning (0), info (1), debug
    (2) and trace (3) information to standard output (default to 1).'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools
- liftover
