class: CommandLineTool
id: mcxsubs.cwl
inputs:
- id: in_imx
  doc: matrix/graph file name
  type: File
  inputBinding:
    prefix: -imx
- id: in_dom
  doc: domain matrix (target for 'd' specs)
  type: string
  inputBinding:
    prefix: -dom
- id: in_tab
  doc: tab file name
  type: File
  inputBinding:
    prefix: -tab
- id: in_tf
  doc: first apply tf-spec to matrix
  type: string
  inputBinding:
    prefix: -tf
- id: in_block
  doc: use the block matrix induced by dom
  type: boolean
  inputBinding:
    prefix: --block
- id: in_block_c
  doc: use the complement of block matrix
  type: boolean
  inputBinding:
    prefix: --blockc
- id: in_from_disk
  doc: read submatrix directly from disk
  type: boolean
  inputBinding:
    prefix: --from-disk
- id: in_skin_read
  doc: only read skeleton matrix (domains, no entries)
  type: boolean
  inputBinding:
    prefix: --skin-read
- id: in_extend
  doc: read extended submatrices
  type: boolean
  inputBinding:
    prefix: --extend
- id: in_out
  doc: special purpose output file name
  type: File
  inputBinding:
    prefix: -out
- id: in_e_fac
  doc: random selection edge factor
  type: long
  inputBinding:
    prefix: -efac
- id: in_d_fac
  doc: random selection domain factor
  type: long
  inputBinding:
    prefix: -dfac
- id: in_r_fac
  doc: random selection row factor
  type: long
  inputBinding:
    prefix: -rfac
- id: in_cfac
  doc: random selection column factor
  type: long
  inputBinding:
    prefix: -cfac
- id: in_rand_discard
  doc: discard random selection
  type: boolean
  inputBinding:
    prefix: --rand-discard
- id: in_rand_exclusive
  doc: discard regular selection
  type: boolean
  inputBinding:
    prefix: --rand-exclusive
- id: in_rand_intersect
  doc: intersect random and regular selection
  type: boolean
  inputBinding:
    prefix: --rand-intersect
- id: in_rand_merge
  doc: join random and regular selection
  type: boolean
  inputBinding:
    prefix: --rand-merge
- id: in_tag
  doc: output tagged matrices
  type: boolean
  inputBinding:
    prefix: --tag
- id: in_tag_digits
  doc: digits to print for tagged write
  type: long
  inputBinding:
    prefix: -tag-digits
- id: in_help
  doc: print this help
  type: boolean
  inputBinding:
    prefix: --help
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sub_spec
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: special purpose output file name
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- mcxsubs
