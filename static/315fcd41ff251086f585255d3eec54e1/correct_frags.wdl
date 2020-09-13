version 1.0

task Correctfrags {
  input {
    Boolean? set_keep_flag
    Boolean? specify_file_use
    Boolean? minimum_exactmatch_region
    File? specify_output_file
    Boolean? use_haplotype_counts
    Boolean? specify_binary_store
    Boolean? set_number_pthreads
    Boolean? specify_level_higher
    Boolean? specify_number_exact
    Boolean? length_end_exclude
    Boolean? ehp
  }
  command <<<
    correct_frags \
      ~{if (set_keep_flag) then "-d" else ""} \
      ~{if (specify_file_use) then "-F" else ""} \
      ~{if (minimum_exactmatch_region) then "-k" else ""} \
      ~{if (specify_output_file) then "-o" else ""} \
      ~{if (use_haplotype_counts) then "-p" else ""} \
      ~{if (specify_binary_store) then "-S" else ""} \
      ~{if (set_number_pthreads) then "-t" else ""} \
      ~{if (specify_level_higher) then "-v" else ""} \
      ~{if (specify_number_exact) then "-V" else ""} \
      ~{if (length_end_exclude) then "-x" else ""} \
      ~{if (ehp) then "-ehp" else ""}
  >>>
  parameter_meta {
    set_keep_flag: "set keep flag on end of frags with less than this many olaps"
    specify_file_use: "specify file of sorted overlaps to use (in the format produced\\nby  get-olaps"
    minimum_exactmatch_region: "minimum exact-match region to prevent change"
    specify_output_file: "specify output file to hold correction info"
    use_haplotype_counts: "don't use haplotype counts to correct"
    specify_binary_store: "specify the binary overlap store containing overlaps to use"
    set_number_pthreads: "set number of p-threads to use"
    specify_level_higher: "specify level of verbose outputs, higher is more"
    specify_number_exact: "specify number of exact match bases around an error to vote to change"
    length_end_exclude: "length of end of exact match to exclude in preventing change"
    ehp: ""
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}