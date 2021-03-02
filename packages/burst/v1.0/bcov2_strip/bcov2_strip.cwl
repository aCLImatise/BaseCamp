class: CommandLineTool
id: bcov2_strip.cwl
inputs:
- id: in_b_cov_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_in_dot_aligns_dot_b_six
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_in_table_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_bins
  doc: ''
  type: string?
  inputBinding:
    position: 4
- id: in_x
  doc: ''
  type: string?
  inputBinding:
    position: 5
- id: in_id
  doc: ''
  type: string?
  inputBinding:
    position: 6
- id: in_uniq
  doc: ''
  type: string?
  inputBinding:
    position: 8
- id: in_up_r_of
  doc: ''
  type: string?
  inputBinding:
    position: 9
- id: in_file_dot_fast_a
  doc: ''
  type: File?
  inputBinding:
    position: 10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/burst:v1.0--0
cwlVersion: v1.1
baseCommand:
- bcov2-strip
