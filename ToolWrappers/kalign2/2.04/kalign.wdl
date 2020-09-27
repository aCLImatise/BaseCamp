version 1.0

task Kalign {
  input {
    Boolean? gapopen_gap_open
    Boolean? gapextension_gap_extension
    Boolean? terminalgapextensionpenalty_terminal_gap
    Boolean? matrixbonus_constant_added
    Boolean? sort_order_appear
    Boolean? feature_selects_feature
    Boolean? same_feature_score
    Boolean? distance_distance_methodwupair
    Boolean? guidetree_guide_tree
    Boolean? zcutoff_parameter_used
    Int k_align_two
    String? in_file
    String? outfile
  }
  command <<<
    kalign \
      ~{k_align_two} \
      ~{in_file} \
      ~{outfile} \
      ~{if (gapopen_gap_open) then "-s" else ""} \
      ~{if (gapextension_gap_extension) then "-e" else ""} \
      ~{if (terminalgapextensionpenalty_terminal_gap) then "-t" else ""} \
      ~{if (matrixbonus_constant_added) then "-m" else ""} \
      ~{if (sort_order_appear) then "-c" else ""} \
      ~{if (feature_selects_feature) then "-g" else ""} \
      ~{if (same_feature_score) then "-same_feature_score" else ""} \
      ~{if (distance_distance_methodwupair) then "-d" else ""} \
      ~{if (guidetree_guide_tree) then "-b" else ""} \
      ~{if (zcutoff_parameter_used) then "-z" else ""}
  >>>
  parameter_meta {
    gapopen_gap_open: ",     -gapopen          Gap open penalty\\n-gap_open\\n-gpo"
    gapextension_gap_extension: ",     -gapextension     Gap extension penalty\\n-gap_ext\\n-gpe"
    terminalgapextensionpenalty_terminal_gap: ",     -terminal_gap_extension_penalty Terminal gap penalties\\n-tgpe"
    matrixbonus_constant_added: ",     -matrix_bonus     A constant added to the substitution matrix.\\n-bonus"
    sort_order_appear: ",     -sort            The order in which the sequences appear in the output alignment.\\n<input, tree, gaps.>"
    feature_selects_feature: ",     -feature          Selects feature mode and specifies which features are to be used:\\ne.g. all, maxplp, STRUCT, PFAM-A...."
    same_feature_score: "Score for aligning same features\\n-diff_feature_score          Penalty for aligning different features"
    distance_distance_methodwupair: ",     -distance         Distance method.\\n<wu,pair>"
    guidetree_guide_tree: ",     -guide-tree       Guide tree method.\\n-tree             <nj,upgma>"
    zcutoff_parameter_used: ",     -zcutoff         Parameter used in the wu-manber based distance calculation\\n-i,     -input            The input file.\\n-infile\\n-in\\n-o,     -output           The output file.\\n-outfile\\n-out\\n-a,     -gap_inc           Parameter increases gap penalties depending on the number of existing gaps\\n-f,     -format           The output format:\\n<fasta, msf, aln, clu, macsim>\\n-q,     -quiet            Print nothing to STDERR.\\nRead nothing from STDIN\\nExamples:\\nUsing pipes:\\nkalign2 [OPTIONS] < [INFILE]   > [OUTFILE]\\nmore [INFILE] |  kalign2 [OPTIONS] > [OUTFILE]\\nRelaxed gap penalties:\\nkalign2 -gpo 60 -gpe 9 -tgpe 0 -bonus 0 < [INFILE]   > [OUTFILE]\\nFeature alignment with pairwise alignment based distance method and NJ guide tree:\\nkalign2 -in test.xml -distance pair -tree nj -sort gaps -feature STRUCT -format macsim -out test.macsim\\n"
    k_align_two: ""
    in_file: ""
    outfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}