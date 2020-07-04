version 1.0

task Razers3 {
  input {
    String? percent_identity
    String? recognition_rate
    Boolean? no_gaps
    Boolean? forward
    Boolean? reverse
    String? max_hits
    Boolean? unique
    String? trim_reads
    File? mapping_result_use
    Boolean? verbose
    Boolean? v_verbose
    String? library_length
    String? library_error
    Boolean? alignment
    Boolean? purge_ambiguous
    String? distance_range
    String? genome_naming
    String? read_naming
    Boolean? full_read_id
    String? sort_order
    String? position_format
    Boolean? dont_shrink_alignments
    String? filter
    String? mutation_rate
    String? overlap_length
    String? param_dir
    String? threshold
    String? taboo_length
    String? shape
    String? overabundance_cut
    String? repeat_length
    String? load_factor
    Boolean? match_n
    File? error_distr
    File? mismatch_file
    String? compact_mult
    String? no_compact_frac
    String? thread_count
    String? parallel_window_size
    String? parallel_verification_size
    String? parallel_verification_max_package_count
    String? available_matches_memory_size
    String? match_histo_start_threshold
    String gap_space_gaps
    String position_space_characters
  }
  command <<<
    razers3 \
      ~{gap_space_gaps} \
      ~{position_space_characters} \
      ~{if defined(percent_identity) then ("--percent-identity " +  '"' + percent_identity + '"') else ""} \
      ~{if defined(recognition_rate) then ("--recognition-rate " +  '"' + recognition_rate + '"') else ""} \
      ~{true="--no-gaps" false="" no_gaps} \
      ~{true="--forward" false="" forward} \
      ~{true="--reverse" false="" reverse} \
      ~{if defined(max_hits) then ("--max-hits " +  '"' + max_hits + '"') else ""} \
      ~{true="--unique" false="" unique} \
      ~{if defined(trim_reads) then ("--trim-reads " +  '"' + trim_reads + '"') else ""} \
      ~{if defined(mapping_result_use) then ("--output " +  '"' + mapping_result_use + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--vverbose" false="" v_verbose} \
      ~{if defined(library_length) then ("--library-length " +  '"' + library_length + '"') else ""} \
      ~{if defined(library_error) then ("--library-error " +  '"' + library_error + '"') else ""} \
      ~{true="--alignment" false="" alignment} \
      ~{true="--purge-ambiguous" false="" purge_ambiguous} \
      ~{if defined(distance_range) then ("--distance-range " +  '"' + distance_range + '"') else ""} \
      ~{if defined(genome_naming) then ("--genome-naming " +  '"' + genome_naming + '"') else ""} \
      ~{if defined(read_naming) then ("--read-naming " +  '"' + read_naming + '"') else ""} \
      ~{true="--full-readid" false="" full_read_id} \
      ~{if defined(sort_order) then ("--sort-order " +  '"' + sort_order + '"') else ""} \
      ~{if defined(position_format) then ("--position-format " +  '"' + position_format + '"') else ""} \
      ~{true="--dont-shrink-alignments" false="" dont_shrink_alignments} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(mutation_rate) then ("--mutation-rate " +  '"' + mutation_rate + '"') else ""} \
      ~{if defined(overlap_length) then ("--overlap-length " +  '"' + overlap_length + '"') else ""} \
      ~{if defined(param_dir) then ("--param-dir " +  '"' + param_dir + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(taboo_length) then ("--taboo-length " +  '"' + taboo_length + '"') else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(overabundance_cut) then ("--overabundance-cut " +  '"' + overabundance_cut + '"') else ""} \
      ~{if defined(repeat_length) then ("--repeat-length " +  '"' + repeat_length + '"') else ""} \
      ~{if defined(load_factor) then ("--load-factor " +  '"' + load_factor + '"') else ""} \
      ~{true="--match-N" false="" match_n} \
      ~{if defined(error_distr) then ("--error-distr " +  '"' + error_distr + '"') else ""} \
      ~{if defined(mismatch_file) then ("--mismatch-file " +  '"' + mismatch_file + '"') else ""} \
      ~{if defined(compact_mult) then ("--compact-mult " +  '"' + compact_mult + '"') else ""} \
      ~{if defined(no_compact_frac) then ("--no-compact-frac " +  '"' + no_compact_frac + '"') else ""} \
      ~{if defined(thread_count) then ("--thread-count " +  '"' + thread_count + '"') else ""} \
      ~{if defined(parallel_window_size) then ("--parallel-window-size " +  '"' + parallel_window_size + '"') else ""} \
      ~{if defined(parallel_verification_size) then ("--parallel-verification-size " +  '"' + parallel_verification_size + '"') else ""} \
      ~{if defined(parallel_verification_max_package_count) then ("--parallel-verification-max-package-count " +  '"' + parallel_verification_max_package_count + '"') else ""} \
      ~{if defined(available_matches_memory_size) then ("--available-matches-memory-size " +  '"' + available_matches_memory_size + '"') else ""} \
      ~{if defined(match_histo_start_threshold) then ("--match-histo-start-threshold " +  '"' + match_histo_start_threshold + '"') else ""}
  >>>
  parameter_meta {
    percent_identity: "Percent identity threshold. In range [50..100]. Default: 95."
    recognition_rate: "Percent recognition rate. In range [80..100]. Default: 99."
    no_gaps: "Allow only mismatches, no indels. Default: allow both."
    forward: "Map reads only to forward strands."
    reverse: "Map reads only to reverse strands."
    max_hits: "Output only <NUM> of the best hits. In range [1..inf]. Default: 100."
    unique: "Output only unique best matches (-m 1 -dr 0 -pa)."
    trim_reads: "Trim reads to given length. Default: off. In range [14..inf]."
    mapping_result_use: "Mapping result filename (use - to dump to stdout in razers format). Default: <READS FILE>.razers. Valid filetypes are: .razers, .eland, .fa, .fasta, .gff, .sam, .bam, and .afg."
    verbose: "Verbose mode."
    v_verbose: "Very verbose mode."
    library_length: "Paired-end library length. In range [1..inf]. Default: 220."
    library_error: "Paired-end library length tolerance. In range [0..inf]. Default: 50."
    alignment: "Dump the alignment for each match (only razer or fasta format)."
    purge_ambiguous: "Purge reads with more than <max-hits> best matches."
    distance_range: "Only consider matches with at most NUM more errors compared to the best. Default: output all."
    genome_naming: "Select how genomes are named (see Naming section below). In range [0..1]. Default: 0."
    read_naming: "Select how reads are named (see Naming section below). In range [0..3]. Default: 0."
    full_read_id: "Use the whole read id (don't clip after whitespace)."
    sort_order: "Select how matches are sorted (see Sorting section below). In range [0..1]. Default: 0."
    position_format: "Select begin/end position numbering (see Coordinate section below). In range [0..1]. Default: 0."
    dont_shrink_alignments: "Disable alignment shrinking in SAM. This is required for generating a gold mapping for Rabema."
    filter: "Select k-mer filter. One of pigeonhole and swift. Default: pigeonhole."
    mutation_rate: "Set the percent mutation rate (pigeonhole). In range [0..20]. Default: 5."
    overlap_length: "Manually set the overlap length of adjacent k-mers (pigeonhole). In range [0..inf]."
    param_dir: "Read user-computed parameter files in the directory <DIR> (swift)."
    threshold: "Manually set minimum k-mer count threshold (swift). In range [1..inf]."
    taboo_length: "Set taboo length (swift). In range [1..inf]. Default: 1."
    shape: "Manually set k-mer shape."
    overabundance_cut: "Set k-mer overabundance cut ratio. In range [0..1]. Default: 1."
    repeat_length: "Skip simple-repeats of length <NUM>. In range [1..inf]. Default: 1000."
    load_factor: "Set the load factor for the open addressing k-mer index. In range [1..inf]. Default: 1.6."
    match_n: "N matches all other characters. Default: N matches nothing."
    error_distr: "Write error distribution to FILE."
    mismatch_file: "Write mismatch patterns to FILE."
    compact_mult: "Multiply compaction treshold by this value after reaching and compacting. In range [0..inf]. Default: 2.2."
    no_compact_frac: "Don't compact if in this last fraction of genome. In range [0..1]. Default: 0.05."
    thread_count: "Set the number of threads to use (0 to force sequential mode). In range [0..inf]. Default: 1."
    parallel_window_size: "Collect candidates in windows of this length. In range [1..inf]. Default: 500000."
    parallel_verification_size: "Verify candidates in packages of this size. In range [1..inf]. Default: 100."
    parallel_verification_max_package_count: "Largest number of packages to create for verification per thread-1. In range [1..inf]. Default: 100."
    available_matches_memory_size: "Bytes of main memory available for storing matches. In range [-1..inf]. Default: 0."
    match_histo_start_threshold: "When to start histogram. In range [1..inf]. Default: 5."
    gap_space_gaps: "Gap space. Gaps between characters are counted from 0."
    position_space_characters: "Position space. Characters are counted from 1."
  }
}