class: CommandLineTool
id: RNAdistance.cwl
inputs:
- id: in_detailed_help
  doc: "Print help, including all details and hidden\noptions, and exit"
  type: boolean?
  inputBinding:
    prefix: --detailed-help
- id: in_distance
  doc: "Specify the distance representation to be used\nin calculations.\n(default=`f')"
  type: string?
  inputBinding:
    prefix: --distance
- id: in_compare
  doc: "|m|f|c         Specify the comparison directive.\n(default=`p')"
  type: string?
  inputBinding:
    prefix: --compare
- id: in_shapiro
  doc: "Use the Bruce Shapiro's cost matrix for\ncomparing coarse structures.\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --shapiro
- id: in_backtrack
  doc: "[=<filename>]  Print an \"alignment\" with gaps of the\nstructures, to show\
    \ matching substructures.\nThe aligned structures are written to\n<filename>,\
    \ if specified.\n(default=`none')"
  type: boolean?
  inputBinding:
    prefix: --backtrack
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0
cwlVersion: v1.1
baseCommand:
- RNAdistance
