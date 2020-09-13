version 1.0

task LINKS {
  input {
    Boolean? sequences_scaffold_format
    Boolean? full_path_long
    Boolean? mpet_reads_m
    Boolean? distance_ie_target
    Boolean? kmer_value_default
    Boolean? step_sliding_window
    Boolean? offset_position_extracting
    Boolean? error_allowed_d
    Boolean? minimum_number_compute
    Boolean? maximum_link_ratio
    Boolean? minimum_contig_length
    Boolean? base_name_output
    Boolean? bloom_filter_input
    Boolean? bloom_filter_false
    Boolean? turn_bloom_functionality
    Boolean? runs_verbose_mode
  }
  command <<<
    LINKS \
      ~{if (sequences_scaffold_format) then "-f" else ""} \
      ~{if (full_path_long) then "-s" else ""} \
      ~{if (mpet_reads_m) then "-m" else ""} \
      ~{if (distance_ie_target) then "-d" else ""} \
      ~{if (kmer_value_default) then "-k" else ""} \
      ~{if (step_sliding_window) then "-t" else ""} \
      ~{if (offset_position_extracting) then "-o" else ""} \
      ~{if (error_allowed_d) then "-e" else ""} \
      ~{if (minimum_number_compute) then "-l" else ""} \
      ~{if (maximum_link_ratio) then "-a" else ""} \
      ~{if (minimum_contig_length) then "-z" else ""} \
      ~{if (base_name_output) then "-b" else ""} \
      ~{if (bloom_filter_input) then "-r" else ""} \
      ~{if (bloom_filter_false) then "-p" else ""} \
      ~{if (turn_bloom_functionality) then "-x" else ""} \
      ~{if (runs_verbose_mode) then "-v" else ""}
  >>>
  parameter_meta {
    sequences_scaffold_format: "sequences to scaffold (Multi-FASTA format, required)"
    full_path_long: "file-of-filenames, full path to long sequence reads or MPET pairs [see below] (Multi-FASTA/fastq format, required)"
    mpet_reads_m: "MPET reads (default -m 1 = yes, default = no, optional)\\n! DO NOT SET IF NOT USING MPET. WHEN SET, LINKS WILL EXPECT A SPECIAL FORMAT UNDER -s\\n! Paired MPET reads in their original outward orientation <- -> must be separated by \\\":\\\"\\n>template_name\\nACGACACTATGCATAAGCAGACGAGCAGCGACGCAGCACG:ATATATAGCGCACGACGCAGCACAGCAGCAGACGAC"
    distance_ie_target: "distance between k-mer pairs (ie. target distances to re-scaffold on. default -d 4000, optional)\\nMultiple distances are separated by comma. eg. -d 500,1000,2000,3000"
    kmer_value_default: "k-mer value (default -k 15, optional)"
    step_sliding_window: "step of sliding window when extracting k-mer pairs from long reads (default -t 2, optional)\\nMultiple steps are separated by comma. eg. -t 10,5"
    offset_position_extracting: "offset position for extracting k-mer pairs (default -o 0, optional)"
    error_allowed_d: "error (%) allowed on -d distance   e.g. -e 0.1  == distance +/- 10% (default -e 0.1, optional)"
    minimum_number_compute: "minimum number of links (k-mer pairs) to compute scaffold (default -l 5, optional)"
    maximum_link_ratio: "maximum link ratio between two best contig pairs (default -a 0.3, optional)\\n*higher values lead to least accurate scaffolding*"
    minimum_contig_length: "minimum contig length to consider for scaffolding (default -z 500, optional)"
    base_name_output: "base name for your output files (optional)"
    bloom_filter_input: "Bloom filter input file for sequences supplied in -f (optional, if none provided will output to .bloom)\\nNOTE: BLOOM FILTER MUST BE DERIVED FROM THE SAME FILE SUPPLIED IN -f WITH SAME -k VALUE\\nIF YOU DO NOT SUPPLY A BLOOM FILTER, ONE WILL BE CREATED (.bloom)"
    bloom_filter_false: "Bloom filter false positive rate (default -p 0.001, optional; increase to prevent memory allocation errors)"
    turn_bloom_functionality: "Turn off Bloom filter functionality (-x 1 = yes, default = no, optional)"
    runs_verbose_mode: "Runs in verbose mode (-v 1 = yes, default = no, optional)"
  }
  output {
    File out_stdout = stdout()
  }
}