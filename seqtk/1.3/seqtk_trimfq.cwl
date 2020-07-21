class: CommandLineTool
id: ../../../seqtk_trimfq.cwl
inputs:
- id: error_rate_threshold
  doc: error rate threshold (disabled by -b/-e) [0.05]
  type: double
  inputBinding:
    prefix: -q
- id: maximally_trim_int
  doc: maximally trim down to INT bp (disabled by -b/-e) [30]
  type: long
  inputBinding:
    prefix: -l
- id: trim_int_bp_left_disable_ql
  doc: trim INT bp from left (non-zero to disable -q/-l) [0]
  type: long
  inputBinding:
    prefix: -b
- id: trim_int_bp_right_disable_ql
  doc: trim INT bp from right (non-zero to disable -q/-l) [0]
  type: long
  inputBinding:
    prefix: -e
- id: retain_most_bp
  doc: retain at most INT bp from the 5'-end (non-zero to disable -q/-l) [0]
  type: long
  inputBinding:
    prefix: -L
- id: force_fastq_output
  doc: force FASTQ output
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqtk
- trimfq
