version 1.0

task Asn2ff {
  input {
    Boolean? filename_asn_input
    Boolean? input_seqentry_optionaldefault
    Boolean? input_asnfile_binary
    File? output_filename_optionaldefault
    File? log_errors_file
    Boolean? output_format_b
    Boolean? output_mode_r
    Boolean? input_seqsubmit_optionaldefault
    Boolean? show_gi_numbers
    Boolean? nonstrict_genebinding_optionaldefault
    Boolean? show_error_messages
    Boolean? show_verbose_f
    Boolean? use_html_format
    Boolean? output_one_
    Boolean? only_in_view
    Boolean? output_map_bioseqs
    File? output_error_logfile
    Boolean? show_gene_features
    Boolean? new_algorithm_orgnames
    Boolean? print_help_format
    Boolean? from_show_region_optionaldefault
    Boolean? to_show_region_optionaldefault
    Boolean? complex_sets_physetmutset
    Boolean? use_seqmgr_indexing
    Boolean? use_version_optionaldefault
    Boolean? show_bankit_comments
    Boolean? genbank_release_optionaldefault
    Boolean? new_locus_line
  }
  command <<<
    asn2ff \
      ~{if (filename_asn_input) then "-a" else ""} \
      ~{if (input_seqentry_optionaldefault) then "-e" else ""} \
      ~{if (input_asnfile_binary) then "-b" else ""} \
      ~{if (output_filename_optionaldefault) then "-o" else ""} \
      ~{if (log_errors_file) then "-l" else ""} \
      ~{if (output_format_b) then "-f" else ""} \
      ~{if (output_mode_r) then "-m" else ""} \
      ~{if (input_seqsubmit_optionaldefault) then "-s" else ""} \
      ~{if (show_gi_numbers) then "-g" else ""} \
      ~{if (nonstrict_genebinding_optionaldefault) then "-n" else ""} \
      ~{if (show_error_messages) then "-v" else ""} \
      ~{if (show_verbose_f) then "-t" else ""} \
      ~{if (use_html_format) then "-w" else ""} \
      ~{if (output_one_) then "-q" else ""} \
      ~{if (only_in_view) then "-G" else ""} \
      ~{if (output_map_bioseqs) then "-M" else ""} \
      ~{if (output_error_logfile) then "-r" else ""} \
      ~{if (show_gene_features) then "-p" else ""} \
      ~{if (new_algorithm_orgnames) then "-z" else ""} \
      ~{if (print_help_format) then "-y" else ""} \
      ~{if (from_show_region_optionaldefault) then "-A" else ""} \
      ~{if (to_show_region_optionaldefault) then "-B" else ""} \
      ~{if (complex_sets_physetmutset) then "-k" else ""} \
      ~{if (use_seqmgr_indexing) then "-d" else ""} \
      ~{if (use_version_optionaldefault) then "-V" else ""} \
      ~{if (show_bankit_comments) then "-C" else ""} \
      ~{if (genbank_release_optionaldefault) then "-R" else ""} \
      ~{if (new_locus_line) then "-L" else ""}
  >>>
  parameter_meta {
    filename_asn_input: "Filename for asn.1 input [File In]  Optional\\ndefault = stdin"
    input_seqentry_optionaldefault: "Input is a Seq-entry [T/F]  Optional\\ndefault = F"
    input_asnfile_binary: "Input asnfile in binary mode [T/F]  Optional\\ndefault = F"
    output_filename_optionaldefault: "Output Filename [File Out]  Optional\\ndefault = stdout"
    log_errors_file: "Log errors to file named: [File Out]  Optional"
    output_format_b: "Output Format?: b for GenBank, p for GenPept, e for EMBL, s for PseudoEMBL, x for   GenBankSelect, z for EMBLPEPT [String]  Optional\\ndefault = b"
    output_mode_r: "Output mode?: r for release, d for dump, s for Sequin, c for Chromoscope, k for dir-sub-debug, l for dir-sub, e for revise, p for partial report [String]  Optional\\ndefault = r"
    input_seqsubmit_optionaldefault: "Input is a Seq-submit [T/F]  Optional\\ndefault = F"
    show_gi_numbers: "Show gi numbers? [T/F]  Optional\\ndefault = F"
    nonstrict_genebinding_optionaldefault: "Non-Strict gene_binding [T/F]  Optional\\ndefault = T"
    show_error_messages: "Show error messages [T/F]  Optional\\ndefault = T"
    show_verbose_f: "Show verbose message text [T/F]  Optional\\ndefault = F"
    use_html_format: "Use HTML output format? [T/F]  Optional\\ndefault = F"
    output_one_: "Output is one top bioseq only [T/F]  Optional\\ndefault = F"
    only_in_view: "Output is one top bioseq only in genome view [T/F]  Optional\\ndefault = F"
    output_map_bioseqs: "Output is map bioseqs only  [T/F]  Optional\\ndefault = F"
    output_error_logfile: "Output error logfile [File Out]  Optional\\ndefault = stderr"
    show_gene_features: "Show new gene features? [T/F]  Optional\\ndefault = T"
    new_algorithm_orgnames: "New algorithm for orgnames? [T/F]  Optional\\ndefault = F"
    print_help_format: "Print help format only? [T/F]  Optional\\ndefault = F"
    from_show_region_optionaldefault: "From to show a region [Real]  Optional\\ndefault = 0"
    to_show_region_optionaldefault: "To to show a region [Real]  Optional\\ndefault = 0"
    complex_sets_physetmutset: "Complex sets (phy-set,mut-set, pop-set)? [T/F]  Optional\\ndefault = T"
    use_seqmgr_indexing: "Use SeqMgr indexing? [T/F]  Optional\\ndefault = F"
    use_version_optionaldefault: "Use VERSION? [T/F]  Optional\\ndefault = T"
    show_bankit_comments: "Show Bankit comments? [T/F]  Optional\\ndefault = F"
    genbank_release_optionaldefault: "For GenBank Release? [T/F]  Optional\\ndefault = F"
    new_locus_line: "New LOCUS line format? [T/F]  Optional\\ndefault = T\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_optionaldefault = "${in_output_filename_optionaldefault}"
    File out_log_errors_file = "${in_log_errors_file}"
    File out_output_error_logfile = "${in_output_error_logfile}"
  }
}