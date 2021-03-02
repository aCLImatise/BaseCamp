class: CommandLineTool
id: ipa_purge_dups_ngscstat.cwl
inputs:
- id: in_int_minimum_alignment
  doc: INT      minimum alignment quality [30]
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_int_maximum_read
  doc: INT      maximum read depth [500]
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_int_maximum_insert
  doc: INT      maximum insert size [1000]
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_ngs_cst_at
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bam_files
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbipa:1.3.2--hee625c5_0
cwlVersion: v1.1
baseCommand:
- ipa_purge_dups_ngscstat
