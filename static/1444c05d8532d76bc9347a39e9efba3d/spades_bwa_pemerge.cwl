class: CommandLineTool
id: spades_bwa_pemerge.cwl
inputs:
- id: in_output_merged_reads
  doc: output merged reads only
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_output_unmerged_reads
  doc: output unmerged reads only
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_number_of_threads
  doc: number of threads [1]
  type: long?
  inputBinding:
    prefix: -t
- id: in_minimum_end_overlap
  doc: minimum end overlap [10]
  type: long?
  inputBinding:
    prefix: -T
- id: in_max_sum_errors
  doc: max sum of errors [70]
  type: long?
  inputBinding:
    prefix: -Q
- id: in_mu
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -mu
- id: in_bwa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_p_emerge
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_read_one_dot_fq
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_read_two_dot_fq
  doc: ''
  type: long?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0
cwlVersion: v1.1
baseCommand:
- spades-bwa
- pemerge
