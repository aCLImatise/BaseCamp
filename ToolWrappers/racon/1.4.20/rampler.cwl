class: CommandLineTool
id: rampler.cwl
inputs:
- id: in_out_directory
  doc: "default: current directory\npath in which sampled files will be created"
  type: Directory?
  inputBinding:
    prefix: --out-directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_directory
  doc: "default: current directory\npath in which sampled files will be created"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/racon:1.4.20--he513fc3_0
cwlVersion: v1.1
baseCommand:
- rampler
