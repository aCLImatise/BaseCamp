version 1.0

task Wtzmo {
  input {
    Int? number_of_threads
    Int? total_parallel_jobs
    Int? index_current_based
    String? long_reads_file
    String? long_reads_index
    String? long_reads_region
    Int? jack_knife_original
    String? load_pairs_read
    String? output_file_alignments
    String? record_pairs_sequences
    Boolean? force_overwrite
    Int? option_homopolymer_compression
    Int? kmer_size_k
    Int? filter_high_frequency_kmers
    Int? minimum_size_kmer
    Int? subsampling_kmers_s
    Int? build_kmer_index
    Int? smaller_kmer_size
    Int? filter_high_frequency_zmers
    Float? ultrafast_dot_matrix
    Int? minimum_size_seeding
    Int? minimum_size_zmer
    Int? maximum_variant_hzkmer
    Int? threshold_seedwindow_coverage
    Int? limit_number_best_candidates
    Int? limit_number_best_overlaps
    Boolean? skip_calculation_contained
    String? reads_files_exclued
    Int? alignment_penalty_match
    Int? alignment_penalty_mismatch
    Int? alignment_penalty_insertion
    Int? alignment_penalty_gap
    Int? alignment_penalty_read
    Int? minimum_bandwidth_iteratively
    Int? maximum_bandwidth
    Int? maximum_bandwidth_ending
    Int? minimum_alignment_score
    Float? minimum_alignment_identity
    Boolean? refine_the_alignment
    Boolean? be_careful_output
  }
  command <<<
    wtzmo \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(total_parallel_jobs) then ("-P " +  '"' + total_parallel_jobs + '"') else ""} \
      ~{if defined(index_current_based) then ("-p " +  '"' + index_current_based + '"') else ""} \
      ~{if defined(long_reads_file) then ("-i " +  '"' + long_reads_file + '"') else ""} \
      ~{if defined(long_reads_index) then ("-I " +  '"' + long_reads_index + '"') else ""} \
      ~{if defined(long_reads_region) then ("-b " +  '"' + long_reads_region + '"') else ""} \
      ~{if defined(jack_knife_original) then ("-J " +  '"' + jack_knife_original + '"') else ""} \
      ~{if defined(load_pairs_read) then ("-L " +  '"' + load_pairs_read + '"') else ""} \
      ~{if defined(output_file_alignments) then ("-o " +  '"' + output_file_alignments + '"') else ""} \
      ~{if defined(record_pairs_sequences) then ("-9 " +  '"' + record_pairs_sequences + '"') else ""} \
      ~{true="-f" false="" force_overwrite} \
      ~{if defined(option_homopolymer_compression) then ("-H " +  '"' + option_homopolymer_compression + '"') else ""} \
      ~{if defined(kmer_size_k) then ("-k " +  '"' + kmer_size_k + '"') else ""} \
      ~{if defined(filter_high_frequency_kmers) then ("-K " +  '"' + filter_high_frequency_kmers + '"') else ""} \
      ~{if defined(minimum_size_kmer) then ("-d " +  '"' + minimum_size_kmer + '"') else ""} \
      ~{if defined(subsampling_kmers_s) then ("-S " +  '"' + subsampling_kmers_s + '"') else ""} \
      ~{if defined(build_kmer_index) then ("-G " +  '"' + build_kmer_index + '"') else ""} \
      ~{if defined(smaller_kmer_size) then ("-z " +  '"' + smaller_kmer_size + '"') else ""} \
      ~{if defined(filter_high_frequency_zmers) then ("-Z " +  '"' + filter_high_frequency_zmers + '"') else ""} \
      ~{if defined(ultrafast_dot_matrix) then ("-U " +  '"' + ultrafast_dot_matrix + '"') else ""} \
      ~{if defined(minimum_size_seeding) then ("-R " +  '"' + minimum_size_seeding + '"') else ""} \
      ~{if defined(minimum_size_zmer) then ("-r " +  '"' + minimum_size_zmer + '"') else ""} \
      ~{if defined(maximum_variant_hzkmer) then ("-l " +  '"' + maximum_variant_hzkmer + '"') else ""} \
      ~{if defined(threshold_seedwindow_coverage) then ("-q " +  '"' + threshold_seedwindow_coverage + '"') else ""} \
      ~{if defined(limit_number_best_candidates) then ("-A " +  '"' + limit_number_best_candidates + '"') else ""} \
      ~{if defined(limit_number_best_overlaps) then ("-B " +  '"' + limit_number_best_overlaps + '"') else ""} \
      ~{true="-C" false="" skip_calculation_contained} \
      ~{if defined(reads_files_exclued) then ("-F " +  '"' + reads_files_exclued + '"') else ""} \
      ~{if defined(alignment_penalty_match) then ("-M " +  '"' + alignment_penalty_match + '"') else ""} \
      ~{if defined(alignment_penalty_mismatch) then ("-X " +  '"' + alignment_penalty_mismatch + '"') else ""} \
      ~{if defined(alignment_penalty_insertion) then ("-O " +  '"' + alignment_penalty_insertion + '"') else ""} \
      ~{if defined(alignment_penalty_gap) then ("-E " +  '"' + alignment_penalty_gap + '"') else ""} \
      ~{if defined(alignment_penalty_read) then ("-T " +  '"' + alignment_penalty_read + '"') else ""} \
      ~{if defined(minimum_bandwidth_iteratively) then ("-w " +  '"' + minimum_bandwidth_iteratively + '"') else ""} \
      ~{if defined(maximum_bandwidth) then ("-W " +  '"' + maximum_bandwidth + '"') else ""} \
      ~{if defined(maximum_bandwidth_ending) then ("-e " +  '"' + maximum_bandwidth_ending + '"') else ""} \
      ~{if defined(minimum_alignment_score) then ("-s " +  '"' + minimum_alignment_score + '"') else ""} \
      ~{if defined(minimum_alignment_identity) then ("-m " +  '"' + minimum_alignment_identity + '"') else ""} \
      ~{true="-n" false="" refine_the_alignment} \
      ~{true="-v" false="" be_careful_output}
  >>>
  parameter_meta {
    number_of_threads: "Number of threads, [1]"
    total_parallel_jobs: "Total parallel jobs, [1]"
    index_current_based: "Index of current job (0-based), [0] Suppose to run wtzmo parallelly in 60 nodes. For node1, -P 60 -p 0; node2, -P 60 -p 1, ..."
    long_reads_file: "Long reads sequences file, + *"
    long_reads_index: "Long reads sequence file, DON'T build index on them, + If specified, program will only align them against all sequences from <-i> Useful in -I mapping contigs(not too large) against -i pacbio reads"
    long_reads_region: "Long reads retained region, often from wtobt/wtcyc, + Format: read_name\toffset\tlength\toriginal_len"
    jack_knife_original: "Jack knife of original read length, [0]"
    load_pairs_read: "Load pairs of read name from file, will avoid to calculate overlap them again, + [NULL]"
    output_file_alignments: "Output file of alignments, *"
    record_pairs_sequences: "Record pairs of sequences have beed aligned regardless of successful, including pairs from '-L' Format: read1\tread2"
    force_overwrite: "Force overwrite"
    option_homopolymer_compression: "Option of homopolymer compression, [3] 1: trun on compression on kmer 2: trun on compression on small-kmer(zmer)"
    kmer_size_k: "Kmer size, 5 <= <-k> <= 32, [16]"
    filter_high_frequency_kmers: "Filter high frequency kmers, maybe repetitive, [0] 0: set K to 5 * <average_kmer_depth>, but no less than 100"
    minimum_size_kmer: "Minimum size of total seeding region for kmer windows, [300]"
    subsampling_kmers_s: "Subsampling kmers, 1/<-S> kmers are indexed, [4]"
    build_kmer_index: "Build kmer index in multiple iterations to save memory, 1: once, [1] Given 10M reads having 100G bases, about 100/(4)=25G used in seq storage, about 100*(6)G=600G used in kmer-index. If -G = 10, kmer-index is divided into 10 pieces, thus taking 60G. But we need additional 10M / <tot_jobs: -P> * 8 * <num_of_cand: -A> memory to store candidates to be aligned."
    smaller_kmer_size: "Smaller kmer size (z-mer), 5 <= <-z> <= 16, [10]"
    filter_high_frequency_zmers: "Filter high frequency z-mers, maybe repetitive, [64]"
    ultrafast_dot_matrix: "Ultra-fast dot matrix alignment, pattern search in zmer image Usage: wtzmo <other_options> -s 200 -m 0.1 -U 128 -U 64 -U 160 -U 1.0 -U 0.05 (1)    (2)   (3)    (4)    (5) Intra-block (1): max_gap, (2): max_deviation, (3): min_size Inter-block (4): deviation penalty, (5): gap size penalty use -U -1 instead of type six default parameters Will trun off -y -R -r -l -q -B -C -M -X -O -W -T -w -W -e -n -y <int>    Zmer window, [800]"
    minimum_size_seeding: "Minimum size of seeding region within zmer window, [200]"
    minimum_size_zmer: "Minimum size of total seeding region for zmer windows, [300]"
    maximum_variant_hzkmer: "Maximum variant of uncompressed sizes between two matched hz-kmer, [2]"
    threshold_seedwindow_coverage: "THreshold of seed-window coverage along query, will be used to decrease weight of repetitive region, [100]"
    limit_number_best_candidates: "Limit number of best candidates per read, [500]"
    limit_number_best_overlaps: "Limit number of best overlaps per read, [100] So call 'best' is estimated by seed-windows, and increase as rd_len / avg_rd_len"
    skip_calculation_contained: "Don't skip calculation of its overlaps even when the read was contained by others"
    reads_files_exclued: "Reads from this file(s) are to be exclued, one line for one read name, + [NULL]"
    alignment_penalty_match: "Alignment penalty: match, [2]"
    alignment_penalty_mismatch: "Alignment penalty: mismatch, [-5]"
    alignment_penalty_insertion: "Alignment penalty: insertion or deletion, [-3]"
    alignment_penalty_gap: "Alignment penalty: gap extension, [-1]"
    alignment_penalty_read: "Alignment penalty: read end clipping, 0: distable HSP extension, otherwise set to -50 or other [-50]"
    minimum_bandwidth_iteratively: "Minimum bandwidth, iteratively doubled to maximum [50]"
    maximum_bandwidth: "Maximum bandwidth, [3200]"
    maximum_bandwidth_ending: "Maximum bandwidth at ending extension, [800]"
    minimum_alignment_score: "Minimum alignment score, [200]"
    minimum_alignment_identity: "Minimum alignment identity, [0.5]"
    refine_the_alignment: "Refine the alignment"
    be_careful_output: "Verbose, BE careful, HUGEEEEEEEE output on STDOUT"
  }
}