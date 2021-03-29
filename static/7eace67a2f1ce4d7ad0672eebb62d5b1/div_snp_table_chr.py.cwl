class: CommandLineTool
id: div_snp_table_chr.py.cwl
inputs:
- id: in_mask
  doc: Mask AR and features with this file
  type: File?
  inputBinding:
    prefix: --mask
- id: in_suffix
  doc: "append suffix to chromosomes to get filenames from\ndiv_directory"
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_lens
  doc: Set chromosome ends using LEN file
  type: File?
  inputBinding:
    prefix: --lens
- id: in_feature_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ar_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_snp_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_div_directory
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- div_snp_table_chr.py
