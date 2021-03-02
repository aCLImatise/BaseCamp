class: CommandLineTool
id: to_mr.cwl
inputs:
- id: in_output
  doc: Name of output file
  type: File?
  inputBinding:
    prefix: -output
- id: in_suff
  doc: 'read name suffix length (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -suff
- id: in_max_frag
  doc: maximum allowed insert size
  type: boolean?
  inputBinding:
    prefix: -max-frag
- id: in_verbose
  doc: print more information
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
- id: in_sam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Name of output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/preseq:3.1.2--hfb6f838_0
cwlVersion: v1.1
baseCommand:
- to-mr
