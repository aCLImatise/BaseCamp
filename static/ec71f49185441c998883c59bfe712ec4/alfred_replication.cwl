class: CommandLineTool
id: alfred_replication.cwl
inputs:
- id: in_arg_min_mapping
  doc: '[ --qual ] arg (=1)          min. mapping quality'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_arg_sliding_window
  doc: '[ --window ] arg (=50000)    sliding window size'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_arg_window_offset
  doc: '[ --step ] arg (=1000)       window offset (step size)'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_reference_fasta
  doc: '[ --reference ] arg          reference fasta file (required)'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_arg_pref_output
  doc: '[ --outprefix ] arg (=pref)  output file prefix'
  type: File?
  inputBinding:
    prefix: -o
- id: in_gone_b_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_s_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_s_two_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_s_three_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_s_four_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 4
- id: in_g_two_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_pref_output
  doc: '[ --outprefix ] arg (=pref)  output file prefix'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_pref_output)
hints: []
cwlVersion: v1.1
baseCommand:
- alfred
- replication
