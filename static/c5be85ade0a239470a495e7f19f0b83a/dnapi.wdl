version 1.0

task Dnapi.py {
  input {
    Boolean? range_single_kmer
    Boolean? range_single_ratio
    Boolean? show_all
    String? map_command
    Float? subsample_rate
    Directory? output_dir
    Boolean? no_output_files
    Directory? temp_dir
    Array[String] adapter_seq
    Int? prefix_match
    Int? min_len
    Int? max_len
    Int? trim_five_p
    Int? trim_three_p
    String fast_q
  }
  command <<<
    dnapi.py \
      ~{fast_q} \
      ~{true="-k" false="" range_single_kmer} \
      ~{true="-r" false="" range_single_ratio} \
      ~{true="--show-all" false="" show_all} \
      ~{if defined(map_command) then ("--map-command " +  '"' + map_command + '"') else ""} \
      ~{if defined(subsample_rate) then ("--subsample-rate " +  '"' + subsample_rate + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{true="--no-output-files" false="" no_output_files} \
      ~{if defined(temp_dir) then ("--temp-dir " +  '"' + temp_dir + '"') else ""} \
      ~{if defined(adapter_seq) then ("--adapter-seq " +  '"' + adapter_seq + '"') else ""} \
      ~{if defined(prefix_match) then ("--prefix-match " +  '"' + prefix_match + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(trim_five_p) then ("--trim-5p " +  '"' + trim_five_p + '"') else ""} \
      ~{if defined(trim_three_p) then ("--trim-3p " +  '"' + trim_three_p + '"') else ""}
  >>>
  parameter_meta {
    range_single_kmer: "[KMER_BEG:KMER_END:INCREMENT | KMER_LEN] range of kmers or a single kmer to predict 3'adapters (default: 9:11:2)"
    range_single_ratio: "[RATIO_BEG:RATIO_END:INTCREMENT | RATIO] range of ratios or a single ratio to filter less abundant kmers (default: 1.2:1.4:0.1)"
    show_all: "show other candidates if any"
    map_command: "read mapping command to be tested"
    subsample_rate: "subsampling fraction of reads (default: 1.0)"
    output_dir: "output directory to write report and cleansed reads (default: ./dnapi_out)"
    no_output_files: "only display report and suppress output files"
    temp_dir: "place to make temporary directory (default: /tmp)"
    adapter_seq: "list of 3'adapters for evaluation"
    prefix_match: "3'adapter match length to trim (default: 7)"
    min_len: "minimum read length to keep for mapping (default: 16)"
    max_len: "maximum read length to keep for mapping (default: 36)"
    trim_five_p: "trim specified number of bases from 5'ends after adapter removal (default: 0)"
    trim_three_p: "trim specified number of bases from 3'ends after adapter removal (default: 0)"
    fast_q: "including stdin or compressed file {zip,gz,tar,bz}"
  }
}