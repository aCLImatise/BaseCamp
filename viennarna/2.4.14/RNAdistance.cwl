class: CommandLineTool
id: RNAdistance.cwl
inputs:
- id: detailed_help
  doc: Print help, including all details and hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --detailed-help
- id: distance
  doc: Specify the distance representation to be used in calculations. (default=`f')
  type: string
  inputBinding:
    prefix: --distance
- id: compare
  doc: "|m|f|c         Specify the comparison directive. (default=`p')"
  type: string
  inputBinding:
    prefix: --compare
- id: shapiro
  doc: Use the Bruce Shapiro's cost matrix for comparing coarse structures. (default=off)
  type: boolean
  inputBinding:
    prefix: --shapiro
- id: backtrack
  doc: "[=<filename>]  Print an \"alignment\" with gaps of the structures, to show\
    \ matching substructures. The aligned structures are written to <filename>, if\
    \ specified. (default=`none')"
  type: boolean
  inputBinding:
    prefix: --backtrack
outputs: []
cwlVersion: v1.1
baseCommand:
- RNAdistance
