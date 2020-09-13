version 1.0

task Tiptoft {
  input {
    File? plasmid_data
    Int? km_er
    File? filtered_reads_file
    File? output_file
    Int? print_interval
    Boolean? verbose
    Boolean? no_hc_compression
    Boolean? no_gene_filter
    Int? max_gap
    Int? max_km_er_count
    Int? margin
    Int? min_block_size
    Int? min_fast_a_hits
    Int? min_perc_coverage
    Int? min_km_ers_for_one_x_pass
  }
  command <<<
    tiptoft \
      ~{if defined(plasmid_data) then ("--plasmid_data " +  '"' + plasmid_data + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(filtered_reads_file) then ("--filtered_reads_file " +  '"' + filtered_reads_file + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(print_interval) then ("--print_interval " +  '"' + print_interval + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_hc_compression) then "--no_hc_compression" else ""} \
      ~{if (no_gene_filter) then "--no_gene_filter" else ""} \
      ~{if defined(max_gap) then ("--max_gap " +  '"' + max_gap + '"') else ""} \
      ~{if defined(max_km_er_count) then ("--max_kmer_count " +  '"' + max_km_er_count + '"') else ""} \
      ~{if defined(margin) then ("--margin " +  '"' + margin + '"') else ""} \
      ~{if defined(min_block_size) then ("--min_block_size " +  '"' + min_block_size + '"') else ""} \
      ~{if defined(min_fast_a_hits) then ("--min_fasta_hits " +  '"' + min_fast_a_hits + '"') else ""} \
      ~{if defined(min_perc_coverage) then ("--min_perc_coverage " +  '"' + min_perc_coverage + '"') else ""} \
      ~{if defined(min_km_ers_for_one_x_pass) then ("--min_kmers_for_onex_pass " +  '"' + min_km_ers_for_one_x_pass + '"') else ""}
  >>>
  parameter_meta {
    plasmid_data: "FASTA file containing plasmid data from downloader\\nscript, defaults to bundled database (default: None)"
    km_er: "k-mer size (default: 13)"
    filtered_reads_file: "Filename to save matching reads to (default: None)"
    output_file: "Output file [STDOUT] (default: None)"
    print_interval: "Print results every this number of reads (default:\\nNone)"
    verbose: "Turn on debugging [False]"
    no_hc_compression: "Turn off homoploymer compression of k-mers (default:\\nFalse)"
    no_gene_filter: "Dont filter out lower coverage genes from same group\\n(default: False)"
    max_gap: "Maximum gap for blocks to be contigous, measured in\\nmultiples of the k-mer size (default: 3)"
    max_km_er_count: "Exclude k-mers which occur more than this number of\\ntimes in a sequence (default: 10)"
    margin: "Flanking region around a block to use for mapping\\n(default: 10)"
    min_block_size: "Minimum block size in bases (default: 50)"
    min_fast_a_hits: "Minimum No. of kmers matching a read (default: 8)"
    min_perc_coverage: "Minimum percentage coverage of typing sequence to\\nreport (default: 85)"
    min_km_ers_for_one_x_pass: "Minimum No. of kmers matching a read in 1st pass\\n(default: 5)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}