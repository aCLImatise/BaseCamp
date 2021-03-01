class: CommandLineTool
id: tadtool_command.cwl
inputs:
- id: in_plot
  doc: Main interactive TADtool plotting window
  type: string
  inputBinding:
    position: 0
- id: in_tads
  doc: Call TADs with pre-defined parameters
  type: string
  inputBinding:
    position: 1
- id: in_subset
  doc: Reduce a matrix to a smaller region.
  type: string
  inputBinding:
    position: 2
- id: in_command
  doc: Subcommand to run
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tadtool:0.82--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tadtool
- command
