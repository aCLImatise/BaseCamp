version 1.0

task RequantAlignedValuespy {
  input {
    File? peak_groups_in_file
    Boolean? disable_isotopic_grouping
    Boolean? disable_isotopic_transfer
    Array[String] in
  }
  command <<<
    requantAlignedValues_py \
      ~{if defined(peak_groups_in_file) then ("--peakgroups_infile " +  '"' + peak_groups_in_file + '"') else ""} \
      ~{if (disable_isotopic_grouping) then "--disable_isotopic_grouping" else ""} \
      ~{if (disable_isotopic_transfer) then "--disable_isotopic_transfer" else ""} \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""}
  >>>
  parameter_meta {
    peak_groups_in_file: "OUTPUT [--file_format FILE_FORMAT]\\n[--out_matrix MATRIX_OUTFILE]\\n[--matrix_output_method MATRIX_OUTPUT_METHOD]\\n[--border_option median] [--dry_run] [--test]\\n[--cache_in_memory] [--method METHOD]\\n[--realign_runs REALIGN_METHOD]\\n[--verbosity VERBOSITY] [--do_single_run]\\n[--disable_isotopic_grouping]\\n[--disable_isotopic_transfer]"
    disable_isotopic_grouping: "Disable grouping of isotopic variants by\\npeptide_group_label, thus disabling matching of\\nisotopic variants of the same peptide across channels.\\nIf turned off, each isotopic channel will be matched\\nindependently of the other. If enabled, the more\\ncertain identification will be used to infer the\\nlocation of the peak in the other channel."
    disable_isotopic_transfer: "Disable the transfer of isotopic boundaries in all\\ncases. If enabled (default), the best (best score)\\nisotopic channel dictates the peak boundaries and all\\nother channels use those boundaries. This ensures\\nconsistency in peak picking in all cases.\\n"
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}