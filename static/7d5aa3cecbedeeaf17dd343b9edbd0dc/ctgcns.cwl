class: CommandLineTool
id: ctgcns.cwl
inputs:
- id: in_test_computation_contig
  doc: Test the computation of the contig layout in 'file'
  type: File?
  inputBinding:
    prefix: -T
- id: in_recompute_contigs_have
  doc: Recompute contigs that already have a multialignment
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_reuse_unitig_consensus
  doc: "Reuse the unitig consensus for contigs with only a single\nunitig (EXPERIMENTAL!)"
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_update_tigstore_dump
  doc: Don't update tigStore, dump a binary file instead.
  type: File?
  inputBinding:
    prefix: -O
- id: in_import_binary_file
  doc: Import binary file into tigStore
  type: File?
  inputBinding:
    prefix: -I
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
- id: in_smoothing_window_size
  doc: Smoothing window size
  type: long?
  inputBinding:
    prefix: -w
- id: in_var_8
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
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
- ctgcns
