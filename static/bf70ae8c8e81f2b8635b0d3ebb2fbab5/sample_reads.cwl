class: CommandLineTool
id: sample_reads.cwl
inputs:
- id: in_depth
  doc: (=30)                  sequencing depth of the sample
  type: long
  inputBinding:
    prefix: --depth
- id: in_error_rate
  doc: (=0.01)           error rate
  type: double
  inputBinding:
    prefix: --error_rate
- id: in_read_length
  doc: (=100)           read length
  type: long
  inputBinding:
    prefix: --read_length
- id: in_paired
  doc: if paired-end
  type: boolean
  inputBinding:
    prefix: --paired
- id: in_insert_distance
  doc: (=500)       insert distance
  type: long
  inputBinding:
    prefix: --insert_distance
- id: in_print_correct
  doc: output correct reads
  type: boolean
  inputBinding:
    prefix: --print_correct
- id: in_sim_reads
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_reads_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sample_reads
