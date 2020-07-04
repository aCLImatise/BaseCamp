version 1.0

task ShortReadConnector.sh {
  input {
    String? shortreadconnectorcounter_srccounter
    Int? windowsize_see_option
    String? prefix_files_start
    String? option_file_exists
    Int? value_set_fit
    Int? value_fingerprint_size
    Int? value_gamma_value
    Int? kmerabundancemin_kmer_bank
    String? low_complexity_regions
    Int? number_thread_used
    String? kmers_present_times
    Boolean? incompatible_srccounter_output
    String? b
    String? q
  }
  command <<<
    short_read_connector.sh \
      ~{if defined(shortreadconnectorcounter_srccounter) then ("-c " +  '"' + shortreadconnectorcounter_srccounter + '"') else ""} \
      ~{if defined(windowsize_see_option) then ("-w " +  '"' + windowsize_see_option + '"') else ""} \
      ~{if defined(prefix_files_start) then ("-p " +  '"' + prefix_files_start + '"') else ""} \
      ~{if defined(option_file_exists) then ("-g " +  '"' + option_file_exists + '"') else ""} \
      ~{if defined(value_set_fit) then ("-k " +  '"' + value_set_fit + '"') else ""} \
      ~{if defined(value_fingerprint_size) then ("-f " +  '"' + value_fingerprint_size + '"') else ""} \
      ~{if defined(value_gamma_value) then ("-G " +  '"' + value_gamma_value + '"') else ""} \
      ~{if defined(kmerabundancemin_kmer_bank) then ("-a " +  '"' + kmerabundancemin_kmer_bank + '"') else ""} \
      ~{if defined(low_complexity_regions) then ("-l " +  '"' + low_complexity_regions + '"') else ""} \
      ~{if defined(number_thread_used) then ("-t " +  '"' + number_thread_used + '"') else ""} \
      ~{if defined(kmers_present_times) then ("-A " +  '"' + kmers_present_times + '"') else ""} \
      ~{true="-r" false="" incompatible_srccounter_output} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    shortreadconnectorcounter_srccounter: "short_read_connector_counter (SRC_counter)"
    windowsize_see_option: "window_size. See option -s. If the windows size is zero (default value), then the full read is considered. Default=0"
    prefix_files_start: "prefix. All out files will start with this prefix. Default=\"short_read_connector_res\""
    option_file_exists: "this option, if a file of solid kmer exists with same prefix name and same k value, then it is re-used and not re-computed."
    value_set_fit: "value. Set the length of used kmers. Must fit the compiled value. Default=31"
    value_fingerprint_size: "value. Fingerprint size. Size of the key associated to each indexed value, limiting false positives. Default=12"
    value_gamma_value: "value. gamma value. MPHF expert users parameter - Default=2"
    kmerabundancemin_kmer_bank: "kmer_abundance_min (kmer from bank seen less than this value both in the bank are not indexed). Default=2"
    low_complexity_regions: "low complexity regions (default false)"
    number_thread_used: "number of thread used. Default=0 (all)"
    kmers_present_times: "kmers present at least 'kmer_abundance_min' times in the bank AND in the queries."
    incompatible_srccounter_output: "(incompatible with SRC_counter), do not output precision about pair of similar reads. Only ids of reads from queries similar to at least one read from bank are output."
    b: ""
    q: ""
  }
}