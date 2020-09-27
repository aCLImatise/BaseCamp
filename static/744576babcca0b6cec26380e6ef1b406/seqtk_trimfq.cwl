class: CommandLineTool
id: seqtk_trimfq.cwl
inputs:
- id: in_error_rate_threshold
  doc: error rate threshold (disabled by -b/-e/-B/-E) [0.05]
  type: double
  inputBinding:
    prefix: -q
- id: in_maximally_trim_int
  doc: maximally trim down to INT bp (disabled by -b/-e/-B/-E) [30]
  type: long
  inputBinding:
    prefix: -l
- id: in_trimming_bebe_shall
  doc: trimming by -b/-e/-B/-E shall not produce reads shorter then INT bp [1]
  type: long
  inputBinding:
    prefix: -s
- id: in_trim_int_bp_left_disable_q
  doc: trim INT bp from left (non-zero to disable -q) [0]
  type: long
  inputBinding:
    prefix: -b
- id: in_trim_int_bp_right_disable_q
  doc: trim INT bp from right (non-zero to disable -q) [0]
  type: long
  inputBinding:
    prefix: -e
- id: in_keep_first_bp
  doc: keep first INT bp from left (non-zero to disable -q/-e/-E) [0]
  type: long
  inputBinding:
    prefix: -B
- id: in_keep_last_bp
  doc: keep last INT bp from right (non-zero to disable -q/-b/-B) [0]
  type: long
  inputBinding:
    prefix: -E
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- seqtk
- trimfq
