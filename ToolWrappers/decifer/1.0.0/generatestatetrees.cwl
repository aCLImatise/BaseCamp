class: CommandLineTool
id: generatestatetrees.cwl
inputs:
- id: in_input_state_tree
  doc: Input state tree file
  type: File?
  inputBinding:
    prefix: -S
- id: in_ss
  doc: Output state tree file
  type: File?
  inputBinding:
    prefix: -SS
- id: in_max_cn
  doc: 'Maximum number of copy number events (default: 2)'
  type: long?
  inputBinding:
    prefix: -maxCN
- id: in_maxx_y
  doc: "Maximum number of maternal/paternal copies (default: 2)\n"
  type: long?
  inputBinding:
    prefix: -maxXY
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ss
  doc: Output state tree file
  type: File?
  outputBinding:
    glob: $(inputs.in_ss)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/decifer:1.0.0--py27h36946f9_0
cwlVersion: v1.1
baseCommand:
- generatestatetrees
