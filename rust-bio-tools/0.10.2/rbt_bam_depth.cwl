class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rbt_bam_depth.cwl
inputs:
- id: excl_flags
  doc: Skip reads with mask bits set [UNMAP, SECONDARY, QCFAIL, DUP].
  type: long
  inputBinding:
    prefix: --excl-flags
- id: incl_flags
  doc: Skip reads with mask bits unset [].
  type: long
  inputBinding:
    prefix: --incl-flags
- id: maximum_read_length
  doc: 'Maximum read length to consider. This affects the speed of the involved pileup.
    Reads longer than this length can be missed when calculating the depth. [default:
    1000]'
  type: long
  inputBinding:
    prefix: -m
- id: min_mapq
  doc: 'Minimum mapping quality. [default: 0]'
  type: long
  inputBinding:
    prefix: --min-mapq
- id: bam_path
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
- bam-depth
