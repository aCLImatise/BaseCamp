version 1.0

task Olapfromseeds {
  input {
    Boolean? asymmetric_overlaps_ie
    Boolean? output_binary_overlap
    File? output_corrections_file
    String? use_clear_range
    String? set_keep_flag
    Boolean? extend_fragments_range
    File? read_seeds_sorted
    Boolean? do_partial_overlaps
    String? prevent_correction_have
    File? send_overlaps_file
    Boolean? use_haplotype_counts
    String? read_seeds_binary
    String? use_n_pthreads
    String? set_verbose_level
    String? require_exact_match
    Boolean? use_correlated_differences
    Int? prevent_correction_first
    Int? expert_bit_options
    Int? allow_error_rate
    Boolean? try_correct_errors
    Boolean? be_hp
  }
  command <<<
    olap_from_seeds \
      ~{if (asymmetric_overlaps_ie) then "-a" else ""} \
      ~{if (output_binary_overlap) then "-b" else ""} \
      ~{if defined(output_corrections_file) then ("-c " +  '"' + output_corrections_file + '"') else ""} \
      ~{if defined(use_clear_range) then ("-C " +  '"' + use_clear_range + '"') else ""} \
      ~{if defined(set_keep_flag) then ("-d " +  '"' + set_keep_flag + '"') else ""} \
      ~{if (extend_fragments_range) then "-e" else ""} \
      ~{if defined(read_seeds_sorted) then ("-F " +  '"' + read_seeds_sorted + '"') else ""} \
      ~{if (do_partial_overlaps) then "-G" else ""} \
      ~{if defined(prevent_correction_have) then ("-k " +  '"' + prevent_correction_have + '"') else ""} \
      ~{if defined(send_overlaps_file) then ("-o " +  '"' + send_overlaps_file + '"') else ""} \
      ~{if (use_haplotype_counts) then "-p" else ""} \
      ~{if defined(read_seeds_binary) then ("-S " +  '"' + read_seeds_binary + '"') else ""} \
      ~{if defined(use_n_pthreads) then ("-t " +  '"' + use_n_pthreads + '"') else ""} \
      ~{if defined(set_verbose_level) then ("-v " +  '"' + set_verbose_level + '"') else ""} \
      ~{if defined(require_exact_match) then ("-V " +  '"' + require_exact_match + '"') else ""} \
      ~{if (use_correlated_differences) then "-w" else ""} \
      ~{if defined(prevent_correction_first) then ("-x " +  '"' + prevent_correction_first + '"') else ""} \
      ~{if defined(expert_bit_options) then ("-X " +  '"' + expert_bit_options + '"') else ""} \
      ~{if defined(allow_error_rate) then ("-y " +  '"' + allow_error_rate + '"') else ""} \
      ~{if (try_correct_errors) then "-z" else ""} \
      ~{if (be_hp) then "-behp" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    asymmetric_overlaps_ie: "Asymmetric overlaps, i.e., only output overlaps with\\na_iid < b_iid"
    output_binary_overlap: "Output binary overlap messages"
    output_corrections_file: "Output corrections to file <f>"
    use_clear_range: "Use clear range <s> for reads.  Default value is\\nAS_READ_CLEAR_LATEST"
    set_keep_flag: "Set keep flag in correction record on end of frags with less\\nthan <n> olaps"
    extend_fragments_range: "Extend fragments beyond 3' clear range"
    read_seeds_sorted: "Read seeds from sorted file <f>.  Format is:\\n<a_iid> <b_iid> [f\\r] <a_pos> <b_pos> <ct> <len>\\nadditional entries on line are ignored.\\nEntries are not reversed, i.e., a/b seed does NOT\\nautomatically generate the b/a seed, too"
    do_partial_overlaps: "Do partial overlaps (i.e., local alignments)"
    prevent_correction_have: "Prevent correction when have an exact match of <n> bases"
    send_overlaps_file: "Send overlaps to file or store <f>"
    use_haplotype_counts: "Don't use haplotype counts to correct"
    read_seeds_binary: "Read seeds from binary overlap store <f>"
    use_n_pthreads: "Use <n> p-threads"
    set_verbose_level: "Set verbose level to <n>; higher is more debugging output"
    require_exact_match: "Require <n> exact match bases around an error (combined count\\non both sides) to vote to change a base"
    use_correlated_differences: "Use correlated differences to disqualify overlaps"
    prevent_correction_first: "Don't prevent correction on first and last <n> bp of exact match\\nregions (whose length is set by -k option)."
    expert_bit_options: "Expert bit options.  <h> is a hexadecimal constant:\\n(<h> & 0x1) == 1 forces old banded forward homopoly alignment\\n(<h> & 0x2) == 1 forces faster non-homopoly forward alignment\\n(<h> & 0x4) == 1 forces faster non-homopoly reverse alignment"
    allow_error_rate: "Allow max error rate of <x> in alignments (e.g., 0.03 for 3% error)\\nValue cannot exceed  0.060"
    try_correct_errors: "Do NOT try to correct read errors"
    be_hp: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_corrections_file = "${in_output_corrections_file}"
  }
}