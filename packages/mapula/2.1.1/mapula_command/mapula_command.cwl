class: CommandLineTool
id: mapula_command.cwl
inputs:
- id: in_count
  doc: Count mapping stats from a SAM/BAM file
  type: string
  inputBinding:
    position: 0
- id: in_merge
  doc: Combine mapula count's aggregated json outputs
  type: string
  inputBinding:
    position: 1
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
  dockerPull: quay.io/biocontainers/mapula:2.1.1--py_0
cwlVersion: v1.1
baseCommand:
- mapula
- command
