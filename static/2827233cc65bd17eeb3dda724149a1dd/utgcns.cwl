class: CommandLineTool
id: utgcns.cwl
inputs:
- id: in_test_computation_unitig
  doc: Test the computation of the unitig layout in 'file'
  type: File?
  inputBinding:
    prefix: -T
- id: in_recompute_unitigs_have
  doc: Recompute unitigs that already have a multialignment
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_show_multialigns
  doc: Show multialigns.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_enable_debugging_option
  doc: Enable debugging option 'verbosemultialign'.
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_update_store_computing
  doc: Do not update the store after computing consensus.
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_max_coverage
  doc: "Use non-contained reads and the longest contained reads, up to\nC coverage,\
    \ for consensus generation.  The default is 0, and will\nuse all reads."
  type: long?
  inputBinding:
    prefix: -maxcoverage
- id: in_maxlength
  doc: Do not compute consensus for unitigs longer than l bases.
  type: string?
  inputBinding:
    prefix: -maxlength
- id: in_in_place
  doc: Write the updated unitig to the same version it was read from.
  type: boolean?
  inputBinding:
    prefix: -inplace
- id: in_v_p_use
  doc: V P        If 'partition' is '.', use an unpartitioned tigStore/gkpStore.
  type: string?
  inputBinding:
    prefix: -t
- id: in_load_all
  doc: Load ALL reads into memory.  Ignores partition if it exists.
  type: boolean?
  inputBinding:
    prefix: -loadall
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_version
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_partition
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_opts
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- utgcns
