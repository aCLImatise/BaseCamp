class: CommandLineTool
id: rbt_bam_depth.cwl
inputs:
- id: in_excl_flags
  doc: Skip reads with mask bits set [UNMAP, SECONDARY, QCFAIL, DUP].
  type: long?
  inputBinding:
    prefix: --excl-flags
- id: in_incl_flags
  doc: Skip reads with mask bits unset [].
  type: long?
  inputBinding:
    prefix: --incl-flags
- id: in_maximum_read_length
  doc: "Maximum read length to consider. This affects the speed of the involved pileup.\
    \ Reads\nlonger than this length can be missed when calculating the depth. [default:\
    \ 1000]"
  type: long?
  inputBinding:
    prefix: -m
- id: in_min_mapq
  doc: 'Minimum mapping quality. [default: 0]'
  type: long?
  inputBinding:
    prefix: --min-mapq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rbt
- bam-depth
