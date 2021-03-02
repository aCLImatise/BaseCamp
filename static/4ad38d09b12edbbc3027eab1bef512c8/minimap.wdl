version 1.0

task Minimap {
  input {
    Int? kmer_size
    Int? minizer_window_size
    Int? split_index_num
    File? dump_index_file
    Boolean? st_argument_w
    Float? filter_top_fraction
    Int? bandwidth
    Float? merge_two_chains
    Int? retain_mapping_consists
    Int? min_matching_length
    Int? split_mapping_is
    Int? sdust_threshold_disable
    Boolean? skip_self_mappings
    Boolean? drop_isolated_hits
    Boolean? filtering_potential_repeats
    Int? preset_recommended_applied
    Int? number_of_threads
    Boolean? show_version_number
    String target_dot_fa
    String? query_dot_fa
  }
  command <<<
    minimap \
      ~{target_dot_fa} \
      ~{query_dot_fa} \
      ~{if defined(kmer_size) then ("-k " +  '"' + kmer_size + '"') else ""} \
      ~{if defined(minizer_window_size) then ("-w " +  '"' + minizer_window_size + '"') else ""} \
      ~{if defined(split_index_num) then ("-I " +  '"' + split_index_num + '"') else ""} \
      ~{if defined(dump_index_file) then ("-d " +  '"' + dump_index_file + '"') else ""} \
      ~{if (st_argument_w) then "-l" else ""} \
      ~{if defined(filter_top_fraction) then ("-f " +  '"' + filter_top_fraction + '"') else ""} \
      ~{if defined(bandwidth) then ("-r " +  '"' + bandwidth + '"') else ""} \
      ~{if defined(merge_two_chains) then ("-m " +  '"' + merge_two_chains + '"') else ""} \
      ~{if defined(retain_mapping_consists) then ("-c " +  '"' + retain_mapping_consists + '"') else ""} \
      ~{if defined(min_matching_length) then ("-L " +  '"' + min_matching_length + '"') else ""} \
      ~{if defined(split_mapping_is) then ("-g " +  '"' + split_mapping_is + '"') else ""} \
      ~{if defined(sdust_threshold_disable) then ("-T " +  '"' + sdust_threshold_disable + '"') else ""} \
      ~{if (skip_self_mappings) then "-S" else ""} \
      ~{if (drop_isolated_hits) then "-O" else ""} \
      ~{if (filtering_potential_repeats) then "-P" else ""} \
      ~{if defined(preset_recommended_applied) then ("-x " +  '"' + preset_recommended_applied + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if (show_version_number) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kmer_size: "k-mer size [15]"
    minizer_window_size: "minizer window size [{-k}*2/3]"
    split_index_num: "split index for every ~NUM input bases [4G]"
    dump_index_file: "dump index to FILE []"
    st_argument_w: "the 1st argument is a index file (overriding -k, -w and -I)"
    filter_top_fraction: "filter out top FLOAT fraction of repetitive minimizers [0.001]"
    bandwidth: "bandwidth [500]"
    merge_two_chains: "merge two chains if FLOAT fraction of minimizers are shared [0.50]"
    retain_mapping_consists: "retain a mapping if it consists of >=INT minimizers [4]"
    min_matching_length: "min matching length [40]"
    split_mapping_is: "split a mapping if there is a gap longer than INT [10000]"
    sdust_threshold_disable: "SDUST threshold; 0 to disable SDUST [0]"
    skip_self_mappings: "skip self and dual mappings"
    drop_isolated_hits: "drop isolated hits before chaining (EXPERIMENTAL)"
    filtering_potential_repeats: "filtering potential repeats after mapping (EXPERIMENTAL)"
    preset_recommended_applied: "preset (recommended to be applied before other options) []\\nava10k: -Sw5 -L100 -m0 (PacBio/ONT all-vs-all read mapping)"
    number_of_threads: "number of threads [3]"
    show_version_number: "show version number"
    target_dot_fa: ""
    query_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}