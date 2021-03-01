class: CommandLineTool
id: bam_count_reads.py_bam.cwl
inputs:
- id: in_z
  doc: ''
  type: string?
  inputBinding:
    prefix: -z
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_a
  doc: ''
  type: string?
  inputBinding:
    prefix: -a
- id: in_bam_count_reads_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- bam_count_reads.py
- bam
