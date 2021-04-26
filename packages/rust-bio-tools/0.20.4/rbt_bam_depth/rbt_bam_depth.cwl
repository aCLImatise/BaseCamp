class: CommandLineTool
id: rbt_bam_depth.cwl
inputs:
- id: in_excl_flags
  doc: 'Skip reads with mask bits set [UNMAP, SECONDARY, QCFAIL, DUP] [default: 1796]'
  type: long?
  inputBinding:
    prefix: --excl-flags
- id: in_incl_flags
  doc: 'Skip reads with mask bits unset [] [default: 0]'
  type: long?
  inputBinding:
    prefix: --incl-flags
- id: in_max_read_length
  doc: "Maximum read length to consider. This affects the speed of the involved pileup.\
    \ Reads longer than this\nlength can be missed when calculating the depth [default:\
    \ 1000]"
  type: long?
  inputBinding:
    prefix: --max-read-length
- id: in_min_mapq
  doc: 'Minimum mapping quality [default: 0]'
  type: long?
  inputBinding:
    prefix: --min-mapq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rust-bio-tools:0.20.4--h4af157f_0
cwlVersion: v1.1
baseCommand:
- rbt
- bam-depth
