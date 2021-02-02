version 1.0

task ShortReadConnectorsh {
  input {
    Int? for_bankexample_b
    File? queryexample_q_datafoftxt
    String? shortreadconnectorcounter_srccounter
    Int? see_option_s
    String? prefix_files_start
    File? option_file_exists
    Int? value_set_length
    Int? value_fingerprint_size
    Int? value_gamma_value
    Int? kmerabundancemin_kmer_bank
    String? low_complexity_regions
    Int? number_thread_used
    String? kmers_present_times
    Boolean? incompatible_srccounter_output
  }
  command <<<
    short_read_connector_sh \
      ~{if defined(for_bankexample_b) then ("-b " +  '"' + for_bankexample_b + '"') else ""} \
      ~{if defined(queryexample_q_datafoftxt) then ("-q " +  '"' + queryexample_q_datafoftxt + '"') else ""} \
      ~{if defined(shortreadconnectorcounter_srccounter) then ("-c " +  '"' + shortreadconnectorcounter_srccounter + '"') else ""} \
      ~{if defined(see_option_s) then ("-w " +  '"' + see_option_s + '"') else ""} \
      ~{if defined(prefix_files_start) then ("-p " +  '"' + prefix_files_start + '"') else ""} \
      ~{if defined(option_file_exists) then ("-g " +  '"' + option_file_exists + '"') else ""} \
      ~{if defined(value_set_length) then ("-k " +  '"' + value_set_length + '"') else ""} \
      ~{if defined(value_fingerprint_size) then ("-f " +  '"' + value_fingerprint_size + '"') else ""} \
      ~{if defined(value_gamma_value) then ("-G " +  '"' + value_gamma_value + '"') else ""} \
      ~{if defined(kmerabundancemin_kmer_bank) then ("-a " +  '"' + kmerabundancemin_kmer_bank + '"') else ""} \
      ~{if defined(low_complexity_regions) then ("-l " +  '"' + low_complexity_regions + '"') else ""} \
      ~{if defined(number_thread_used) then ("-t " +  '"' + number_thread_used + '"') else ""} \
      ~{if defined(kmers_present_times) then ("-A " +  '"' + kmers_present_times + '"') else ""} \
      ~{if (incompatible_srccounter_output) then "-r" else ""}
  >>>
  parameter_meta {
    for_bankexample_b: "for bank\\nExample: -b data/c1.fasta.gz"
    queryexample_q_datafoftxt: "for query\\nExample: -q data/fof.txt (with fof being a file of file descriptor)"
    shortreadconnectorcounter_srccounter: "short_read_connector_counter (SRC_counter)"
    see_option_s: "window_size. See option -s. If the windows size is zero (default value), then the full read is considered. Default=0"
    prefix_files_start: "prefix. All out files will start with this prefix. Default=\\\"short_read_connector_res\\\""
    option_file_exists: "this option, if a file of solid kmer exists with same prefix name and same k value, then it is re-used and not re-computed."
    value_set_length: "value. Set the length of used kmers. Must fit the compiled value. Default=31"
    value_fingerprint_size: "value. Fingerprint size. Size of the key associated to each indexed value, limiting false positives. Default=12"
    value_gamma_value: "value. gamma value. MPHF expert users parameter - Default=2"
    kmerabundancemin_kmer_bank: "kmer_abundance_min (kmer from bank seen less than this value both in the bank are not indexed). Default=2"
    low_complexity_regions: "low complexity regions (default false)"
    number_thread_used: "number of thread used. Default=0 (all)"
    kmers_present_times: "kmers present at least 'kmer_abundance_min' times in the bank AND in the queries."
    incompatible_srccounter_output: "(incompatible with SRC_counter), do not output precision about pair of similar reads. Only ids of reads from queries similar to at least one read from bank are output."
  }
  output {
    File out_stdout = stdout()
  }
}