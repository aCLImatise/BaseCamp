class: CommandLineTool
id: gfa2_to_gfa1.py.cwl
inputs:
- id: in_in
  doc: "GFA 2.0 file (format: 'xxx.gfa')"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output directory for saving the GFA 1.0 file
  type: File?
  inputBinding:
    prefix: -out
- id: in_gfa_dot_two_to_gfa_do_tone_do_tpy
  doc: ''
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output directory for saving the GFA 1.0 file
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mtglink:1.0.2--0
cwlVersion: v1.1
baseCommand:
- gfa2_to_gfa1.py
