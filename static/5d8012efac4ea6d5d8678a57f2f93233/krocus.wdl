version 1.0

task Krocus {
  input {
    String? filtered_reads_file
    String? output_file
    Int? max_gap
    String? margin
    Int? min_block_size
    Int? min_fast_a_hits
    Int? min_km_ers_for_one_x_pass
    Int? max_km_ers
    String? print_interval
    String? km_er
    Boolean? divisible_by_three
    String? target_st
    Boolean? verbose
  }
  command <<<
    krocus \
      ~{if defined(filtered_reads_file) then ("--filtered_reads_file " +  '"' + filtered_reads_file + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(max_gap) then ("--max_gap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(margin) then ("--margin " +  '"' + margin + '"') else ""} \
      ~{if defined(min_block_size) then ("--min_block_size " +  '"' + min_block_size + '"') else ""} \
      ~{if defined(min_fast_a_hits) then ("--min_fasta_hits " +  '"' + min_fast_a_hits + '"') else ""} \
      ~{if defined(min_km_ers_for_one_x_pass) then ("--min_kmers_for_onex_pass " +  '"' + min_km_ers_for_one_x_pass + '"') else ""} \
      ~{if defined(max_km_ers) then ("--max_kmers " +  '"' + max_km_ers + '"') else ""} \
      ~{if defined(print_interval) then ("--print_interval " +  '"' + print_interval + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{true="--divisible_by_3" false="" divisible_by_three} \
      ~{if defined(target_st) then ("--target_st " +  '"' + target_st + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    filtered_reads_file: "Filename to save matching reads to (default: None)"
    output_file: "Output file [STDOUT] (default: None)"
    max_gap: "Maximum gap for blocks to be contigous, measured in multiples of the k-mer size (default: 4)"
    margin: "Flanking region around a block to use for mapping (default: 50)"
    min_block_size: "Minimum block size in bases (default: 150)"
    min_fast_a_hits: "Minimum No. of kmers matching a read (default: 10)"
    min_km_ers_for_one_x_pass: "Minimum No. of kmers matching a read in 1st pass (default: 10)"
    max_km_ers: "Dont count kmers occuring more than this many times (default: 10)"
    print_interval: "Print ST every this number of reads (default: 500)"
    km_er: "k-mer size (default: 11)"
    divisible_by_three: "Genes which are not divisible by 3 are excluded (default: False)"
    target_st: "For performance testing print time to find given ST (default: None)"
    verbose: "Turn on debugging [False]"
  }
}