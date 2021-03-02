class: CommandLineTool
id: fermi_ropebwt.cwl
inputs:
- id: in_algorithm_bpr_bcr
  doc: 'algorithm: bpr or bcr [bpr]'
  type: string?
  inputBinding:
    prefix: -a
- id: in_max_number_runs
  doc: max number of runs in leaves (bpr only) [512]
  type: long?
  inputBinding:
    prefix: -r
- id: in_max_number_children
  doc: max number children per internal node (bpr only) [64]
  type: long?
  inputBinding:
    prefix: -n
- id: in_output_file
  doc: output file [stdout]
  type: File?
  inputBinding:
    prefix: -o
- id: in_temporary_sequence_file
  doc: temporary sequence file name (bcr only) [null]
  type: File?
  inputBinding:
    prefix: -f
- id: in_verbose_level_bcr
  doc: verbose level (bcr only) [2]
  type: long?
  inputBinding:
    prefix: -v
- id: in_binary_output_runs
  doc: binary output (5+3 runs starting after 4 bytes)
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_enable_threading_bcr
  doc: enable threading (bcr only)
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_skip_forward_strand
  doc: skip forward strand
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_skip_reverse_strand
  doc: skip reverse strand
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_cut_ambiguous_bases
  doc: cut at ambiguous bases
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_suppress_end_trimming
  doc: suppress end trimming when forward==reverse
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_print_tree_stdout
  doc: print the tree stdout (bpr only)
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_rope_bwt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_fq_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- fermi
- ropebwt
