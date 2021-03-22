class: CommandLineTool
id: hops.cwl
inputs:
- id: in_config_file
  doc: Path to Config File
  type: File?
  inputBinding:
    prefix: --configFile
- id: in_input
  doc: Specify input directory or files valid option depend on mode
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_mode
  doc: HOPS Mode to run accpeted full, malt, maltex, post
  type: string?
  inputBinding:
    prefix: --mode
- id: in_output
  doc: Specify out directory
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Specify out directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hops:0.35--0
cwlVersion: v1.1
baseCommand:
- hops
