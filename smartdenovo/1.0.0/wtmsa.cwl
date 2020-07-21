class: CommandLineTool
id: ../../../wtmsa.cwl
inputs:
- id: total_parallel_jobs
  doc: Total parallel jobs, [1]
  type: long
  inputBinding:
    prefix: -P
- id: index_current_based
  doc: Index of current job (0-based), [0] Suppose to run wtmsa for the same layout
    file parallelly in 60 cpu. For cpu1, -P 60 -p 0; cpu2, -P 60 -p 1, ...
  type: long
  inputBinding:
    prefix: -p
- id: input_file_layout
  doc: Input file, layout from wtlay, +, *
  type: string
  inputBinding:
    prefix: -i
- id: output_file_consensus
  doc: Output file, consensus sequences, *
  type: string
  inputBinding:
    prefix: -o
- id: print_backbone_sequences
  doc: Print backbone sequences on file for debug [NULL]
  type: string
  inputBinding:
    prefix: -B
- id: print_dot_graph
  doc: Print dot graph on file, H U G E, be careful, [NULL]
  type: string
  inputBinding:
    prefix: -G
- id: force_overwrite
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: trun_homopolymer_compression
  doc: Trun off homopolymer compression
  type: boolean
  inputBinding:
    prefix: -H
- id: zmer_size_z
  doc: Zmer size, 5 <= <-z> <= 16, [10]
  type: long
  inputBinding:
    prefix: -z
- id: zmer_window
  doc: Zmer window, [800]
  type: long
  inputBinding:
    prefix: -y
- id: minimum_size_seeding
  doc: Minimum size of seeding region within zmer window, [200]
  type: long
  inputBinding:
    prefix: -R
- id: maximum_variant_uncompressed
  doc: Maximum variant of uncompressed sizes between two matched zmer, [2]
  type: long
  inputBinding:
    prefix: -l
- id: alignment_penalty_match
  doc: 'Alignment penalty: match, [2]'
  type: long
  inputBinding:
    prefix: -M
- id: alignment_penalty_mismatch
  doc: 'Alignment penalty: mismatch, [-5]'
  type: long
  inputBinding:
    prefix: -X
- id: alignment_penalty_insertion
  doc: 'Alignment penalty: insertion, [-2]'
  type: long
  inputBinding:
    prefix: -I
- id: alignment_penalty_deletion
  doc: 'Alignment penalty: deletion, [-3]'
  type: long
  inputBinding:
    prefix: -D
- id: turn_homopolymer_merge
  doc: turn on homopolymer merge penalty
  type: long
  inputBinding:
    prefix: -V
- id: alignment_penalty_gap
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long
  inputBinding:
    prefix: -E
- id: alignment_penalty_read
  doc: 'Alignment penalty: read end clipping [-10]'
  type: long
  inputBinding:
    prefix: -T
- id: disable_phreadqv_refinealignment
  doc: Disable PhreadQV in refine-alignment
  type: boolean
  inputBinding:
    prefix: -F
- id: minimum_bandwidth_pairwise
  doc: Minimum bandwidth of pairwise alignment, iteratively doubled to maximum [50]
  type: long
  inputBinding:
    prefix: -w
- id: maximum_bandwidth_pairwise
  doc: Maximum bandwidth of pairwise alignment, [3200]
  type: long
  inputBinding:
    prefix: -W
- id: maximum_bandwidth_ending
  doc: Maximum bandwidth at graph alignment and ending extension, [800]
  type: long
  inputBinding:
    prefix: -e
- id: basic_bandwidth_graph
  doc: Basic bandwidth in graph alignment, [100]
  type: long
  inputBinding:
    prefix: -g
- id: minimum_alignment_identity
  doc: Minimum alignment identity, [0.5]
  type: double
  inputBinding:
    prefix: -m
- id: number_iterations_consensus
  doc: Number of iterations for consensus calling, the more, the accurater, the slower
    [2]
  type: long
  inputBinding:
    prefix: -n
- id: verbose
  doc: Verbose, +
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- wtmsa
