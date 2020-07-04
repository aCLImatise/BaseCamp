class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/wtgbo.cwl
inputs:
- id: number_of_threads
  doc: Number of threads, [1]
  type: long
  inputBinding:
    prefix: -t
- id: long_reads_files
  doc: Long reads sequences file(s), + *
  type: string
  inputBinding:
    prefix: -i
- id: long_reads_region
  doc: 'Long reads retained region, often from wtobt, + Format: read_name\toffset\tlength\toriginal_len'
  type: string
  inputBinding:
    prefix: -b
- id: overlap_files_readsttlentbegtendtreadsttlentbegtendtscore
  doc: 'Overlap file(s), + * Format: reads1\t+/-\tlen1\tbeg1\tend1\treads2\t+/-\tlen2\tbeg2\tend2\tscore'
  type: string
  inputBinding:
    prefix: -j
- id: load_pairs_read
  doc: Load pairs of read name from file, will avoid to calculate overlap them again,
    + [NULL]
  type: string
  inputBinding:
    prefix: -L
- id: minimum_alignment_score
  doc: Minimum alignment score, [200]
  type: long
  inputBinding:
    prefix: -s
- id: minimum_alignment_identity
  doc: Minimum alignment identity, [0.6]
  type: double
  inputBinding:
    prefix: -m
- id: maximum_margin_alignment
  doc: Maximum margin of alignment, [100]
  type: long
  inputBinding:
    prefix: -u
- id: output_file_new
  doc: Output file of new overlaps, *
  type: string
  inputBinding:
    prefix: -o
- id: record_pairs_sequences
  doc: "Record pairs of sequences have beed aligned regardless of successful, including\
    \ pairs from '-L' Format: read1\\tread2"
  type: string
  inputBinding:
    prefix: '-9'
- id: force_overwrite_output
  doc: Force overwrite output file
  type: boolean
  inputBinding:
    prefix: -f
- id: minimum_estimated_coverage
  doc: Minimum estimated coverage of edge to be trusted, [1] edge coverage is calculated
    by counting overlaps that can replace this edge
  type: long
  inputBinding:
    prefix: -c
- id: use_number_matches
  doc: Use number of matches as alignment score
  type: boolean
  inputBinding:
    prefix: -Q
- id: best_score_cutoff
  doc: Best score cutoff, say best overlap MUST have alignment score >= <-r> * read's
    best score [0.95]
  type: double
  inputBinding:
    prefix: -q
- id: turn_homopolymer_compression
  doc: Turn off homopolymer compression
  type: boolean
  inputBinding:
    prefix: -H
- id: smaller_kmer_size
  doc: Smaller kmer size (z-mer), 5 <= <-z> <= 16, [10]
  type: long
  inputBinding:
    prefix: -z
- id: filter_high_frequency
  doc: Filter high frequency z-mers, maybe repetitive, [100]
  type: long
  inputBinding:
    prefix: -Z
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
- id: minimum_size_total
  doc: Minimum size of total seeding region for zmer windows, [300]
  type: long
  inputBinding:
    prefix: -r
- id: maximum_variant_hzkmer
  doc: Maximum variant of uncompressed sizes between two matched hz-kmer, [2]
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
  doc: 'Alignment penalty: insertion or deletion, [-3]'
  type: long
  inputBinding:
    prefix: -O
- id: alignment_penalty_gap
  doc: 'Alignment penalty: gap extension, [-1]'
  type: long
  inputBinding:
    prefix: -E
- id: alignment_penalty_read
  doc: 'Alignment penalty: read end clipping, 0: distable HSP extension, otherwise
    set to -50 or other [-50]'
  type: long
  inputBinding:
    prefix: -T
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
- id: refine_the_alignment
  doc: Refine the alignment
  type: boolean
  inputBinding:
    prefix: -n
- id: max_turns_iteration
  doc: Max turns of iteration, [5]
  type: long
  inputBinding:
    prefix: -N
outputs: []
cwlVersion: v1.1
baseCommand:
- wtgbo
