class: CommandLineTool
id: coval_filter_short.pl.cwl
inputs:
- id: in_ref
  doc: reference fasta file used for the alignment
  type: File?
  inputBinding:
    prefix: --ref
- id: in_pref
  doc: prefix of output file
  type: File?
  inputBinding:
    prefix: --pref
- id: in_num
  doc: 'maximum number of mismatches contained in a read [default: 2] (incompatible
    with --mrate)'
  type: long?
  inputBinding:
    prefix: --num
- id: in_m_rate
  doc: maximum rate of mismatches contained in a read [0..1.0] (incompatible with
    --num)
  type: long?
  inputBinding:
    prefix: --mrate
- id: in_var_4
  doc: ''
  type: string?
  inputBinding:
    prefix: --help
- id: in_var_5
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_c_oval
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_maximum
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_prefix_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reference
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_filter
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_13
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_rate
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_input_sorted_bam_slash_sam_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_19
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_mismatches
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_used
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_contained
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_read
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_zero_dot_dot_one_dot_zero
  doc: ''
  type: double?
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pref
  doc: prefix of output file
  type: File?
  outputBinding:
    glob: $(inputs.in_pref)
hints: []
cwlVersion: v1.1
baseCommand:
- coval-filter-short.pl
