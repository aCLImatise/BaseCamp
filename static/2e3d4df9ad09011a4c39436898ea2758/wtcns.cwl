class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/wtcns.cwl
inputs:
- id: number_of_threads
  doc: Number of threads, [16]
  type: long
  inputBinding:
    prefix: -t
- id: total_parallel_jobs
  doc: Total parallel jobs, [1]
  type: long
  inputBinding:
    prefix: -P
- id: index_current_based
  doc: Index of current job (0-based), [0] Suppose to run wtcns for the same layout
    file parallelly in 60 cpu. For cpu1, -P 60 -p 0; cpu2, -P 60 -p 1, ...
  type: long
  inputBinding:
    prefix: -p
- id: input_file_layout
  doc: Input file, layout from wtlay, +
  type: string
  inputBinding:
    prefix: -i
- id: output_file_consensus
  doc: Output file, consensus sequences, [STDOUT]
  type: string
  inputBinding:
    prefix: -o
- id: force_overwrite
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: trun_homopolymer_compression
  doc: Trun on homopolymer compression
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
- id: alignment_penalty_insertion_deletion
  doc: 'Alignment penalty: insertion or deletion, used in first round [-3]'
  type: long
  inputBinding:
    prefix: -O
- id: alignment_penalty_insertion_used
  doc: 'Alignment penalty: insertion, used in rounds after first, [-2]'
  type: long
  inputBinding:
    prefix: -I
- id: alignment_penalty_deletion
  doc: 'Alignment penalty: deletion, used in rounds after first, [-3]'
  type: long
  inputBinding:
    prefix: -D
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
- id: minimum_bandwidth_iteratively
  doc: Minimum bandwidth, iteratively doubled to maximum [50]
  type: long
  inputBinding:
    prefix: -w
- id: maximum_bandwidth
  doc: Maximum bandwidth, [3200]
  type: long
  inputBinding:
    prefix: -W
- id: maximum_bandwidth_ending
  doc: Maximum bandwidth at ending extension, [800]
  type: long
  inputBinding:
    prefix: -e
- id: basic_bandwidth_refinealignment
  doc: Basic bandwidth in refine-alignment, [8]
  type: long
  inputBinding:
    prefix: -r
- id: minimum_alignment_identity
  doc: Minimum alignment identity, [0.5]
  type: double
  inputBinding:
    prefix: -m
- id: penalty_backbone_edge
  doc: Penalty of backbone edge in calling consensus, [0.5]
  type: double
  inputBinding:
    prefix: -Y
- id: penalty_alternative_edge
  doc: Penalty of alternative edge in calling consensus, [0.2] The above two options
    control whether the consensus look like backbone or alternative Default 0.5 and
    0.2, will let the consensus don't look like backbone
  type: double
  inputBinding:
    prefix: -N
- id: number_iterations_consensus
  doc: Number of iterations for consensus calling, the larger, the accurater, the
    slower [6]
  type: long
  inputBinding:
    prefix: -n
- id: align_reads_final
  doc: Align reads against final consensus, and output to <-a>
  type: string
  inputBinding:
    prefix: -a
- id: disable_fast_zmer
  doc: Disable fast zmer align in final aligning (see -a), use standard smith-waterman
    More than once -A, will disable fast zmer align in all process
  type: boolean
  inputBinding:
    prefix: -A
- id: ouput_call_variants
  doc: 'Ouput call variants and print to <-a>, -V 2.05 mean: min_allele_count>=2,min_allele_freq>=0.05'
  type: double
  inputBinding:
    prefix: -V
- id: be_careful_output
  doc: Verbose, BE careful, HUGEEEEEEEE output on STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- wtcns
