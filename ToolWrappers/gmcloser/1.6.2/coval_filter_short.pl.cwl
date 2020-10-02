class: CommandLineTool
id: coval_filter_short.pl.cwl
inputs:
- id: in_ref
  doc: reference fasta file used for the alignment
  type: File
  inputBinding:
    prefix: --ref
- id: in_pref
  doc: prefix of output file
  type: File
  inputBinding:
    prefix: --pref
- id: in_num
  doc: 'maximum number of mismatches contained in a read [default: 2] (incompatible
    with --mrate)'
  type: long
  inputBinding:
    prefix: --num
- id: in_m_rate
  doc: maximum rate of mismatches contained in a read [0..1.0] (incompatible with
    --num)
  type: long
  inputBinding:
    prefix: --mrate
- id: in_help
  doc: ''
  type: string
  inputBinding:
    prefix: --help
- id: in_out_prefix_dot_bam_slash_sam
  doc: 'Options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pref
  doc: prefix of output file
  type: File
  outputBinding:
    glob: $(inputs.in_pref)
cwlVersion: v1.1
baseCommand:
- coval-filter-short.pl
