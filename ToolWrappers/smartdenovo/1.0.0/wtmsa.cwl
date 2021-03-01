class: CommandLineTool
id: wtmsa.cwl
inputs:
- id: in_total_parallel_jobs
  doc: Total parallel jobs, [1]
  type: long?
  inputBinding:
    prefix: -P
- id: in_index_current_cpu
  doc: "Index of current job (0-based), [0]\nSuppose to run wtmsa for the same layout\
    \ file parallelly in 60 cpu. For cpu1, -P 60 -p 0; cpu2, -P 60 -p 1, ..."
  type: long?
  inputBinding:
    prefix: -p
- id: in_input_file_layout
  doc: Input file, layout from wtlay, +, *
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_file_sequences
  doc: Output file, consensus sequences, *
  type: File?
  inputBinding:
    prefix: -o
- id: in_print_backbone_sequences
  doc: Print backbone sequences on file for debug [NULL]
  type: File?
  inputBinding:
    prefix: -B
- id: in_print_dot_graph
  doc: Print dot graph on file, H U G E, be careful, [NULL]
  type: File?
  inputBinding:
    prefix: -G
- id: in_force_overwrite
  doc: Force overwrite
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_trun_homopolymer_compression
  doc: Trun off homopolymer compression
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_zmer_window
  doc: Zmer window, [800]
  type: long?
  inputBinding:
    prefix: -y
- id: in_minimum_size_seeding
  doc: Minimum size of seeding region within zmer window, [200]
  type: long?
  inputBinding:
    prefix: -R
- id: in_maximum_variant_uncompressed
  doc: Maximum variant of uncompressed sizes between two matched zmer, [2]
  type: long?
  inputBinding:
    prefix: -l
- id: in_alignment_penalty_match
  doc: 'Alignment penalty: match, [2]'
  type: long?
  inputBinding:
    prefix: -M
- id: in_alignment_penalty_mismatch
  doc: 'Alignment penalty: mismatch, [-5]'
  type: long?
  inputBinding:
    prefix: -X
- id: in_alignment_penalty_insertion
  doc: 'Alignment penalty: insertion, [-2]'
  type: long?
  inputBinding:
    prefix: -I
- id: in_alignment_penalty_deletion
  doc: 'Alignment penalty: deletion, [-3]'
  type: long?
  inputBinding:
    prefix: -D
- id: in_turn_merge_penalty
  doc: turn on homopolymer merge penalty
  type: long?
  inputBinding:
    prefix: -V
- id: in_alignment_penalty_gap
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long?
  inputBinding:
    prefix: -E
- id: in_alignment_penalty_read
  doc: 'Alignment penalty: read end clipping [-10]'
  type: long?
  inputBinding:
    prefix: -T
- id: in_disable_phreadqv_refinealignment
  doc: Disable PhreadQV in refine-alignment
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_minimum_bandwidth_pairwise
  doc: Minimum bandwidth of pairwise alignment, iteratively doubled to maximum [50]
  type: long?
  inputBinding:
    prefix: -w
- id: in_maximum_bandwidth_pairwise
  doc: Maximum bandwidth of pairwise alignment, [3200]
  type: long?
  inputBinding:
    prefix: -W
- id: in_maximum_bandwidth_graph
  doc: Maximum bandwidth at graph alignment and ending extension, [800]
  type: long?
  inputBinding:
    prefix: -e
- id: in_basic_bandwidth_graph
  doc: Basic bandwidth in graph alignment, [100]
  type: long?
  inputBinding:
    prefix: -g
- id: in_minimum_alignment_identity
  doc: Minimum alignment identity, [0.5]
  type: double?
  inputBinding:
    prefix: -m
- id: in_number_iterations_consensus
  doc: Number of iterations for consensus calling, the more, the accurater, the slower
    [2]
  type: long?
  inputBinding:
    prefix: -n
- id: in_verbose
  doc: Verbose, +
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_sequences
  doc: Output file, consensus sequences, *
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_sequences)
hints: []
cwlVersion: v1.1
baseCommand:
- wtmsa
