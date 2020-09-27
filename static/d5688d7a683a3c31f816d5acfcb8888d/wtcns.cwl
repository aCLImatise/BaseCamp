class: CommandLineTool
id: wtcns.cwl
inputs:
- id: in_number_of_threads
  doc: Number of threads, [16]
  type: long
  inputBinding:
    prefix: -t
- id: in_total_parallel_jobs
  doc: Total parallel jobs, [1]
  type: long
  inputBinding:
    prefix: -P
- id: in_index_run_wtcns
  doc: "Index of current job (0-based), [0]\nSuppose to run wtcns for the same layout\
    \ file parallelly in 60 cpu. For cpu1, -P 60 -p 0; cpu2, -P 60 -p 1, ..."
  type: long
  inputBinding:
    prefix: -p
- id: in_input_file_layout
  doc: Input file, layout from wtlay, +
  type: File
  inputBinding:
    prefix: -i
- id: in_output_file_consensus
  doc: Output file, consensus sequences, [STDOUT]
  type: File
  inputBinding:
    prefix: -o
- id: in_force_overwrite
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: in_trun_homopolymer_compression
  doc: Trun on homopolymer compression
  type: boolean
  inputBinding:
    prefix: -H
- id: in_zmer_window
  doc: Zmer window, [800]
  type: long
  inputBinding:
    prefix: -y
- id: in_minimum_size_seeding
  doc: Minimum size of seeding region within zmer window, [200]
  type: long
  inputBinding:
    prefix: -R
- id: in_maximum_variant_uncompressed
  doc: Maximum variant of uncompressed sizes between two matched zmer, [2]
  type: long
  inputBinding:
    prefix: -l
- id: in_alignment_penalty_match
  doc: 'Alignment penalty: match, [2]'
  type: long
  inputBinding:
    prefix: -M
- id: in_alignment_penalty_mismatch
  doc: 'Alignment penalty: mismatch, [-5]'
  type: long
  inputBinding:
    prefix: -X
- id: in_alignment_penalty_insertion_deletion
  doc: 'Alignment penalty: insertion or deletion, used in first round [-3]'
  type: long
  inputBinding:
    prefix: -O
- id: in_alignment_penalty_insertion_used
  doc: 'Alignment penalty: insertion, used in rounds after first, [-2]'
  type: long
  inputBinding:
    prefix: -I
- id: in_alignment_penalty_deletion
  doc: 'Alignment penalty: deletion, used in rounds after first, [-3]'
  type: long
  inputBinding:
    prefix: -D
- id: in_alignment_penalty_gap
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long
  inputBinding:
    prefix: -E
- id: in_alignment_penalty_read
  doc: 'Alignment penalty: read end clipping [-10]'
  type: long
  inputBinding:
    prefix: -T
- id: in_disable_phreadqv_refinealignment
  doc: Disable PhreadQV in refine-alignment
  type: boolean
  inputBinding:
    prefix: -F
- id: in_minimum_bandwidth_iteratively
  doc: Minimum bandwidth, iteratively doubled to maximum [50]
  type: long
  inputBinding:
    prefix: -w
- id: in_maximum_bandwidth
  doc: Maximum bandwidth, [3200]
  type: long
  inputBinding:
    prefix: -W
- id: in_maximum_bandwidth_ending
  doc: Maximum bandwidth at ending extension, [800]
  type: long
  inputBinding:
    prefix: -e
- id: in_basic_bandwidth_refinealignment
  doc: Basic bandwidth in refine-alignment, [8]
  type: long
  inputBinding:
    prefix: -r
- id: in_minimum_alignment_identity
  doc: Minimum alignment identity, [0.5]
  type: double
  inputBinding:
    prefix: -m
- id: in_penalty_backbone_edge
  doc: Penalty of backbone edge in calling consensus, [0.5]
  type: double
  inputBinding:
    prefix: -Y
- id: in_penalty_alternative_edge
  doc: "Penalty of alternative edge in calling consensus, [0.2]\nThe above two options\
    \ control whether the consensus look like backbone or alternative\nDefault 0.5\
    \ and 0.2, will let the consensus don't look like backbone"
  type: double
  inputBinding:
    prefix: -N
- id: in_number_iterations_consensus
  doc: Number of iterations for consensus calling, the larger, the accurater, the
    slower [6]
  type: long
  inputBinding:
    prefix: -n
- id: in_align_reads_final
  doc: Align reads against final consensus, and output to <-a>
  type: string
  inputBinding:
    prefix: -a
- id: in_disable_fast_zmer
  doc: "Disable fast zmer align in final aligning (see -a), use standard smith-waterman\n\
    More than once -A, will disable fast zmer align in all process"
  type: boolean
  inputBinding:
    prefix: -A
- id: in_ouput_call_variants
  doc: 'Ouput call variants and print to <-a>, -V 2.05 mean: min_allele_count>=2,min_allele_freq>=0.05'
  type: double
  inputBinding:
    prefix: -V
- id: in_verbose_be_output
  doc: Verbose, BE careful, HUGEEEEEEEE output on STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_consensus
  doc: Output file, consensus sequences, [STDOUT]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_consensus)
cwlVersion: v1.1
baseCommand:
- wtcns
