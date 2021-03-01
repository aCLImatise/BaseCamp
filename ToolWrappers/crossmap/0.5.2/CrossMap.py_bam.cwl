class: CommandLineTool
id: CrossMap.py_bam.cwl
inputs:
- id: in_mean
  doc: "Average insert size of pair-end sequencing (bp).\n{default=200.0}"
  type: long?
  inputBinding:
    prefix: --mean
- id: in_stdev
  doc: Stanadard deviation of insert size. {default=30.0}
  type: long?
  inputBinding:
    prefix: --stdev
- id: in_times
  doc: "A mapped pair is considered as \"proper pair\" if both\nends mapped to different\
    \ strand and\nthe distance between them is less then '-t' * stdev\nfrom the mean.\
    \ {default=3.0}"
  type: long?
  inputBinding:
    prefix: --times
- id: in_append_tags
  doc: Add tag to each alignment.
  type: boolean?
  inputBinding:
    prefix: --append-tags
- id: in_chain_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/crossmap:0.5.2--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- CrossMap.py
- bam
