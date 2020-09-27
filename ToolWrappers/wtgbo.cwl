class: CommandLineTool
id: wtgbo.cwl
inputs:
- id: in_number_of_threads
  doc: Number of threads, [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_long_reads_files
  doc: Long reads sequences file(s), + *
  type: File
  inputBinding:
    prefix: -i
- id: in_long_reads_region
  doc: "Long reads retained region, often from wtobt, +\nFormat: read_name\\toffset\\\
    tlength\\toriginal_len"
  type: string
  inputBinding:
    prefix: -b
- id: in_overlap_files_readsttlentbegtendtreadsttlentbegtendtscore
  doc: "Overlap file(s), + *\nFormat: reads1\\t+/-\\tlen1\\tbeg1\\tend1\\treads2\\\
    t+/-\\tlen2\\tbeg2\\tend2\\tscore"
  type: File
  inputBinding:
    prefix: -j
- id: in_load_pairs_read
  doc: Load pairs of read name from file, will avoid to calculate overlap them again,
    + [NULL]
  type: File
  inputBinding:
    prefix: -L
- id: in_minimum_alignment_score
  doc: Minimum alignment score, [200]
  type: long
  inputBinding:
    prefix: -s
- id: in_minimum_alignment_identity
  doc: Minimum alignment identity, [0.6]
  type: double
  inputBinding:
    prefix: -m
- id: in_maximum_margin_alignment
  doc: Maximum margin of alignment, [100]
  type: long
  inputBinding:
    prefix: -u
- id: in_output_file_new
  doc: Output file of new overlaps, *
  type: File
  inputBinding:
    prefix: -o
- id: in_record_pairs_sequences
  doc: "Record pairs of sequences have beed aligned regardless of successful, including\
    \ pairs from '-L'\nFormat: read1\\tread2"
  type: long
  inputBinding:
    prefix: '-9'
- id: in_force_overwrite_output
  doc: Force overwrite output file
  type: File
  inputBinding:
    prefix: -f
- id: in_minimum_estimated_coverage
  doc: "Minimum estimated coverage of edge to be trusted, [1]\nedge coverage is calculated\
    \ by counting overlaps that can replace this edge"
  type: long
  inputBinding:
    prefix: -c
- id: in_use_number_matches
  doc: Use number of matches as alignment score
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_best_score_cutoff
  doc: Best score cutoff, say best overlap MUST have alignment score >= <-r> * read's
    best score [0.95]
  type: double
  inputBinding:
    prefix: -q
- id: in_turn_homopolymer_compression
  doc: Turn off homopolymer compression
  type: boolean
  inputBinding:
    prefix: -H
- id: in_smaller_kmer_size
  doc: Smaller kmer size (z-mer), 5 <= <-z> <= 16, [10]
  type: long
  inputBinding:
    prefix: -z
- id: in_filter_high_frequency
  doc: Filter high frequency z-mers, maybe repetitive, [100]
  type: long
  inputBinding:
    prefix: -Z
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
- id: in_minimum_size_total
  doc: Minimum size of total seeding region for zmer windows, [300]
  type: long
  inputBinding:
    prefix: -r
- id: in_maximum_variant_hzkmer
  doc: Maximum variant of uncompressed sizes between two matched hz-kmer, [2]
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
- id: in_alignment_penalty_insertion
  doc: 'Alignment penalty: insertion or deletion, [-3]'
  type: long
  inputBinding:
    prefix: -O
- id: in_alignment_penalty_gap
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long
  inputBinding:
    prefix: -E
- id: in_alignment_penalty_read
  doc: 'Alignment penalty: read end clipping, 0: distable HSP extension, otherwise
    set to -50 or other [-50]'
  type: long
  inputBinding:
    prefix: -T
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
- id: in_refine_the_alignment
  doc: Refine the alignment
  type: boolean
  inputBinding:
    prefix: -n
- id: in_max_turns_iteration
  doc: Max turns of iteration, [5]
  type: long
  inputBinding:
    prefix: -N
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_new
  doc: Output file of new overlaps, *
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_new)
- id: out_force_overwrite_output
  doc: Force overwrite output file
  type: File
  outputBinding:
    glob: $(inputs.in_force_overwrite_output)
cwlVersion: v1.1
baseCommand:
- wtgbo
