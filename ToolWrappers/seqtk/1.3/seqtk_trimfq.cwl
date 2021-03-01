class: CommandLineTool
id: seqtk_trimfq.cwl
inputs:
- id: in_error_rate_threshold
  doc: error rate threshold (disabled by -b/-e) [0.05]
  type: double?
  inputBinding:
    prefix: -q
- id: in_maximally_trim_int
  doc: maximally trim down to INT bp (disabled by -b/-e) [30]
  type: long?
  inputBinding:
    prefix: -l
- id: in_trim_int_bp_left_disable_ql
  doc: trim INT bp from left (non-zero to disable -q/-l) [0]
  type: long?
  inputBinding:
    prefix: -b
- id: in_trim_int_bp_right_disable_ql
  doc: trim INT bp from right (non-zero to disable -q/-l) [0]
  type: long?
  inputBinding:
    prefix: -e
- id: in_retain_disable_ql
  doc: retain at most INT bp from the 5'-end (non-zero to disable -q/-l) [0]
  type: long?
  inputBinding:
    prefix: -L
- id: in_force_fastq_output
  doc: force FASTQ output
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seqtk
- trimfq
