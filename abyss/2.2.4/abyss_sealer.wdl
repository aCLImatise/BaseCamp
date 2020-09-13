version 1.0

task Abysssealer {
  input {
    Boolean? print_flanks
    File? input_scaffold
    Int? flank_length
    Int? max_gap_length
    Int? threads
    Int? km_er
    Int? bloom_size
    File? dot_file
    Boolean? fix_errors
    Int? max_cost
    File? input_bloom
    Boolean? mask
    Boolean? no_mask
    Boolean? chastity
    Boolean? no_chastity
    Boolean? trim_masked
    Boolean? no_trim_masked
    Int? flank_mismatches
    Int? max_mismatches
    Boolean? no_limits
    File? output_prefix
    Int? max_paths
    String? trim_quality
    Boolean? standard_quality
    Boolean? illumina_quality
    String? read_name
    Int? search_mem
    File? gap_file
    File? trace_file
    Boolean? verbose
    Int? max_branches
    Int? min_frag
    Int? max_frag
    String abyss_sealer_b
    Int bloom_filter_size
  }
  command <<<
    abyss_sealer \
      ~{abyss_sealer_b} \
      ~{bloom_filter_size} \
      ~{if (print_flanks) then "--print-flanks" else ""} \
      ~{if defined(input_scaffold) then ("--input-scaffold " +  '"' + input_scaffold + '"') else ""} \
      ~{if defined(flank_length) then ("--flank-length " +  '"' + flank_length + '"') else ""} \
      ~{if defined(max_gap_length) then ("--max-gap-length " +  '"' + max_gap_length + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(bloom_size) then ("--bloom-size " +  '"' + bloom_size + '"') else ""} \
      ~{if defined(dot_file) then ("--dot-file " +  '"' + dot_file + '"') else ""} \
      ~{if (fix_errors) then "--fix-errors" else ""} \
      ~{if defined(max_cost) then ("--max-cost " +  '"' + max_cost + '"') else ""} \
      ~{if defined(input_bloom) then ("--input-bloom " +  '"' + input_bloom + '"') else ""} \
      ~{if (mask) then "--mask" else ""} \
      ~{if (no_mask) then "--no-mask" else ""} \
      ~{if (chastity) then "--chastity" else ""} \
      ~{if (no_chastity) then "--no-chastity" else ""} \
      ~{if (trim_masked) then "--trim-masked" else ""} \
      ~{if (no_trim_masked) then "--no-trim-masked" else ""} \
      ~{if defined(flank_mismatches) then ("--flank-mismatches " +  '"' + flank_mismatches + '"') else ""} \
      ~{if defined(max_mismatches) then ("--max-mismatches " +  '"' + max_mismatches + '"') else ""} \
      ~{if (no_limits) then "--no-limits" else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(max_paths) then ("--max-paths " +  '"' + max_paths + '"') else ""} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{if (standard_quality) then "--standard-quality" else ""} \
      ~{if (illumina_quality) then "--illumina-quality" else ""} \
      ~{if defined(read_name) then ("--read-name " +  '"' + read_name + '"') else ""} \
      ~{if defined(search_mem) then ("--search-mem " +  '"' + search_mem + '"') else ""} \
      ~{if defined(gap_file) then ("--gap-file " +  '"' + gap_file + '"') else ""} \
      ~{if defined(trace_file) then ("--trace-file " +  '"' + trace_file + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(max_branches) then ("--max-branches " +  '"' + max_branches + '"') else ""} \
      ~{if defined(min_frag) then ("--min-frag " +  '"' + min_frag + '"') else ""} \
      ~{if defined(max_frag) then ("--max-frag " +  '"' + max_frag + '"') else ""}
  >>>
  parameter_meta {
    print_flanks: "outputs flank files"
    input_scaffold: "load scaffold from FILE"
    flank_length: "length of flanks to be used as pseudoreads [100]"
    max_gap_length: "max gap size to fill in bp [800]; runtime increases\\nexponentially with respect to this parameter"
    threads: "use N parallel threads [1]"
    km_er: "the size of a k-mer"
    bloom_size: "size of Bloom filter (e.g. '40G'). Required\\nwhen not using pre-built Bloom filter(s)\\n(-i option)"
    dot_file: "write graph traversals to a DOT file"
    fix_errors: "find and fix single-base errors when reads\\nhave no kmers in bloom filter [disabled]"
    max_cost: "max edges to traverse during each graph search [100000]"
    input_bloom: "load bloom filter from FILE"
    mask: "mask new and changed bases as lower case"
    no_mask: "do not mask bases [default]"
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    trim_masked: "trim masked bases from the ends of reads"
    no_trim_masked: "do not trim masked bases from the ends\\nof reads [default]"
    flank_mismatches: "max mismatches between paths and flanks; use\\n'nolimit' for no limit [nolimit]"
    max_mismatches: "max mismatches between all alternate paths;\\nuse 'nolimit' for no limit [nolimit]"
    no_limits: "disable all limits; equivalent to\\n'-B nolimit -m nolimit -M nolimit -P nolimit'"
    output_prefix: "prefix of output FASTA files [required]"
    max_paths: "merge at most N alternate paths; use 'nolimit'\\nfor no limit [2]"
    trim_quality: "trim bases from the ends of reads whose\\nquality is less than the threshold"
    standard_quality: "zero quality is `!' (33)\\ndefault for FASTQ and SAM files"
    illumina_quality: "zero quality is `@' (64)\\ndefault for qseq and export files"
    read_name: "only process reads with names that contain STR"
    search_mem: "mem limit for graph searches; multiply by the\\nnumber of threads (-j) to get the total mem used\\nfor graph traversal [500M]"
    gap_file: "write sealed gaps to FILE"
    trace_file: "write graph search stats to FILE"
    verbose: "display verbose output"
    max_branches: "max branches in de Bruijn graph traversal;\\nuse 'nolimit' for no limit [nolimit]"
    min_frag: "min fragment size in base pairs"
    max_frag: "max fragment size in base pairs"
    abyss_sealer_b: ""
    bloom_filter_size: ""
  }
  output {
    File out_stdout = stdout()
  }
}