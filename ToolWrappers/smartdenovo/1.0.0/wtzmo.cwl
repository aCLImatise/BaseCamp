class: CommandLineTool
id: wtzmo.cwl
inputs:
- id: in_number_of_threads
  doc: Number of threads, [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_total_parallel_jobs
  doc: Total parallel jobs, [1]
  type: long
  inputBinding:
    prefix: -P
- id: in_index_run_wtzmo
  doc: "Index of current job (0-based), [0]\nSuppose to run wtzmo parallelly in 60\
    \ nodes. For node1, -P 60 -p 0; node2, -P 60 -p 1, ..."
  type: long
  inputBinding:
    prefix: -p
- id: in_long_reads_file
  doc: Long reads sequences file, + *
  type: File
  inputBinding:
    prefix: -i
- id: in_long_reads_index
  doc: "Long reads sequence file, DON'T build index on them, +\nIf specified, program\
    \ will only align them against all sequences from <-i>\nUseful in -I mapping contigs(not\
    \ too large) against -i pacbio reads"
  type: File
  inputBinding:
    prefix: -I
- id: in_long_reads_region
  doc: "Long reads retained region, often from wtobt/wtcyc, +\nFormat: read_name\\\
    toffset\\tlength\\toriginal_len"
  type: string
  inputBinding:
    prefix: -b
- id: in_jack_knife_original
  doc: Jack knife of original read length, [0]
  type: long
  inputBinding:
    prefix: -J
- id: in_load_pairs_read
  doc: Load pairs of read name from file, will avoid to calculate overlap them again,
    + [NULL]
  type: File
  inputBinding:
    prefix: -L
- id: in_output_file_alignments
  doc: Output file of alignments, *
  type: File
  inputBinding:
    prefix: -o
- id: in_record_pairs_sequences
  doc: "Record pairs of sequences have beed aligned regardless of successful, including\
    \ pairs from '-L'\nFormat: read1\\tread2"
  type: long
  inputBinding:
    prefix: '-9'
- id: in_force_overwrite
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: in_option_homopolymer_compression
  doc: "Option of homopolymer compression, [3]\n1: trun on compression on kmer\n2:\
    \ trun on compression on small-kmer(zmer)"
  type: long
  inputBinding:
    prefix: -H
- id: in_filter_high_frequency_kmers
  doc: "Filter high frequency kmers, maybe repetitive, [0]\n0: set K to 5 * <average_kmer_depth>,\
    \ but no less than 100"
  type: long
  inputBinding:
    prefix: -K
- id: in_minimum_size_kmer
  doc: Minimum size of total seeding region for kmer windows, [300]
  type: long
  inputBinding:
    prefix: -d
- id: in_subsampling_kmers_s
  doc: Subsampling kmers, 1/<-S> kmers are indexed, [4]
  type: long
  inputBinding:
    prefix: -S
- id: in_build_kmer_index
  doc: "Build kmer index in multiple iterations to save memory, 1: once, [1]\nGiven\
    \ 10M reads having 100G bases, about 100/(4)=25G used in seq storage, about 100*(6)G=600G\n\
    used in kmer-index. If -G = 10, kmer-index is divided into 10 pieces, thus taking\
    \ 60G. But we need additional\n10M / <tot_jobs: -P> * 8 * <num_of_cand: -A> memory\
    \ to store candidates to be aligned."
  type: long
  inputBinding:
    prefix: -G
- id: in_smaller_kmer_size
  doc: Smaller kmer size (z-mer), 5 <= <-z> <= 16, [10]
  type: long
  inputBinding:
    prefix: -z
- id: in_filter_high_frequency_zmers
  doc: Filter high frequency z-mers, maybe repetitive, [64]
  type: long
  inputBinding:
    prefix: -Z
- id: in_ultrafast_dot_matrix
  doc: "Ultra-fast dot matrix alignment, pattern search in zmer image\nUsage: wtzmo\
    \ <other_options> -s 200 -m 0.1 -U 128 -U 64 -U 160 -U 1.0 -U 0.05\n(1)    (2)\
    \   (3)    (4)    (5)\nIntra-block (1): max_gap, (2): max_deviation, (3): min_size\n\
    Inter-block (4): deviation penalty, (5): gap size penalty\nuse -U -1 instead of\
    \ type six default parameters\nWill trun off -y -R -r -l -q -B -C -M -X -O -W\
    \ -T -w -W -e -n -y <int>    Zmer window, [800]"
  type: double
  inputBinding:
    prefix: -U
- id: in_minimum_size_seeding
  doc: Minimum size of seeding region within zmer window, [200]
  type: long
  inputBinding:
    prefix: -R
- id: in_minimum_size_zmer
  doc: Minimum size of total seeding region for zmer windows, [300]
  type: long
  inputBinding:
    prefix: -r
- id: in_maximum_variant_hzkmer
  doc: Maximum variant of uncompressed sizes between two matched hz-kmer, [2]
  type: long
  inputBinding:
    prefix: -l
- id: in_threshold_seedwindow_coverage
  doc: THreshold of seed-window coverage along query, will be used to decrease weight
    of repetitive region, [100]
  type: long
  inputBinding:
    prefix: -q
- id: in_limit_number_best_candidates
  doc: Limit number of best candidates per read, [500]
  type: long
  inputBinding:
    prefix: -A
- id: in_limit_number_best_overlaps
  doc: "Limit number of best overlaps per read, [100]\nSo call 'best' is estimated\
    \ by seed-windows, and increase as rd_len / avg_rd_len"
  type: long
  inputBinding:
    prefix: -B
- id: in_skip_calculation_contained
  doc: Don't skip calculation of its overlaps even when the read was contained by
    others
  type: boolean
  inputBinding:
    prefix: -C
- id: in_reads_files_exclued
  doc: Reads from this file(s) are to be exclued, one line for one read name, + [NULL]
  type: File
  inputBinding:
    prefix: -F
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
- id: in_maximum_bandwidth_ending
  doc: Maximum bandwidth at ending extension, [800]
  type: long
  inputBinding:
    prefix: -e
- id: in_minimum_alignment_score
  doc: Minimum alignment score, [200]
  type: long
  inputBinding:
    prefix: -s
- id: in_minimum_alignment_identity
  doc: Minimum alignment identity, [0.5]
  type: double
  inputBinding:
    prefix: -m
- id: in_refine_the_alignment
  doc: Refine the alignment
  type: boolean
  inputBinding:
    prefix: -n
- id: in_verbose_be_output
  doc: Verbose, BE careful, HUGEEEEEEEE output on STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_alignments
  doc: Output file of alignments, *
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_alignments)
cwlVersion: v1.1
baseCommand:
- wtzmo
