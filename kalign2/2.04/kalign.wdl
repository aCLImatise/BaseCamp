version 1.0

task Kalign {
  input {
    Boolean? gapopen_gap_penalty
    Boolean? gap_open
    Boolean? gpo
    Boolean? gapextension_gap_extension
    Boolean? gap_ext
    Boolean? gpe
    Boolean? terminalgapextensionpenalty_terminal_gap
    Boolean? tgp_e
    Boolean? matrixbonus_constant_added
    Boolean? bonus
    Boolean? sort_order_appear
    Boolean? feature_selects_feature
    Boolean? same_feature_score
    Boolean? diff_feature_score
    Boolean? distance_distance_methodwupair
    Boolean? guidetree_guide_tree
    Boolean? tree
    Boolean? zcutoff_parameter_used
    Boolean? input_input_file
    Boolean? var_19
    Boolean? in
    File? output_output_file
    Boolean? var_22
    Boolean? out
    Boolean? gapinc_parameter_increases
    Boolean? format_output_formatfasta
    Boolean? quiet_print_nothing
    Int k_align_two
    String? var_28
    String? var_29
  }
  command <<<
    kalign \
      ~{k_align_two} \
      ~{var_28} \
      ~{var_29} \
      ~{if (gapopen_gap_penalty) then "-s" else ""} \
      ~{if (gap_open) then "-gap_open" else ""} \
      ~{if (gpo) then "-gpo" else ""} \
      ~{if (gapextension_gap_extension) then "-e" else ""} \
      ~{if (gap_ext) then "-gap_ext" else ""} \
      ~{if (gpe) then "-gpe" else ""} \
      ~{if (terminalgapextensionpenalty_terminal_gap) then "-t" else ""} \
      ~{if (tgp_e) then "-tgpe" else ""} \
      ~{if (matrixbonus_constant_added) then "-m" else ""} \
      ~{if (bonus) then "-bonus" else ""} \
      ~{if (sort_order_appear) then "-c" else ""} \
      ~{if (feature_selects_feature) then "-g" else ""} \
      ~{if (same_feature_score) then "-same_feature_score" else ""} \
      ~{if (diff_feature_score) then "-diff_feature_score" else ""} \
      ~{if (distance_distance_methodwupair) then "-d" else ""} \
      ~{if (guidetree_guide_tree) then "-b" else ""} \
      ~{if (tree) then "-tree" else ""} \
      ~{if (zcutoff_parameter_used) then "-z" else ""} \
      ~{if (input_input_file) then "-i" else ""} \
      ~{if (var_19) then "-infile" else ""} \
      ~{if (in) then "-in" else ""} \
      ~{if (output_output_file) then "-o" else ""} \
      ~{if (var_22) then "-outfile" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (gapinc_parameter_increases) then "-a" else ""} \
      ~{if (format_output_formatfasta) then "-f" else ""} \
      ~{if (quiet_print_nothing) then "-q" else ""}
  >>>
  parameter_meta {
    gapopen_gap_penalty: ",     -gapopen          Gap open penalty"
    gap_open: ""
    gpo: ""
    gapextension_gap_extension: ",     -gapextension     Gap extension penalty"
    gap_ext: ""
    gpe: ""
    terminalgapextensionpenalty_terminal_gap: ",     -terminal_gap_extension_penalty Terminal gap penalties"
    tgp_e: ""
    matrixbonus_constant_added: ",     -matrix_bonus     A constant added to the substitution matrix."
    bonus: ""
    sort_order_appear: ",     -sort            The order in which the sequences appear in the output alignment.\\n<input, tree, gaps.>"
    feature_selects_feature: ",     -feature          Selects feature mode and specifies which features are to be used:\\ne.g. all, maxplp, STRUCT, PFAM-A...."
    same_feature_score: "Score for aligning same features"
    diff_feature_score: "Penalty for aligning different features"
    distance_distance_methodwupair: ",     -distance         Distance method.\\n<wu,pair>"
    guidetree_guide_tree: ",     -guide-tree       Guide tree method."
    tree: "<nj,upgma>"
    zcutoff_parameter_used: ",     -zcutoff         Parameter used in the wu-manber based distance calculation"
    input_input_file: ",     -input            The input file."
    var_19: ""
    in: ""
    output_output_file: ",     -output           The output file."
    var_22: ""
    out: ""
    gapinc_parameter_increases: ",     -gap_inc           Parameter increases gap penalties depending on the number of existing gaps"
    format_output_formatfasta: ",     -format           The output format:\\n<fasta, msf, aln, clu, macsim>"
    quiet_print_nothing: ",     -quiet            Print nothing to STDERR.\\nRead nothing from STDIN"
    k_align_two: ""
    var_28: ""
    var_29: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_output_file = "${in_output_output_file}"
  }
}