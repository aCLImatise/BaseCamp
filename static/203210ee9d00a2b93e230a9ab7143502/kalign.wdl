version 1.0

task Kalign {
  input {
    Boolean? gap_open
    Boolean? gap_extension
    String? terminal_gap_extension_penalty
    Boolean? matrix_bonus
    Boolean? bonus
    Boolean? feature
    Boolean? same_feature_score
    Boolean? diff_feature_score
    Boolean? distance
    Boolean? guide_tree
    Boolean? tree
    Boolean? z_cut_off
    Boolean? the_input_file
    File? the_output_file
    Boolean? parameter_increases_penalties
    Boolean? format
    Boolean? quiet
    Int k_align_two
    String? var_18
    String? var_19
  }
  command <<<
    kalign \
      ~{k_align_two} \
      ~{var_18} \
      ~{var_19} \
      ~{if (gap_open) then "-gapopen" else ""} \
      ~{if (gap_extension) then "-gapextension" else ""} \
      ~{if defined(terminal_gap_extension_penalty) then ("-terminal_gap_extension_penalty " +  '"' + terminal_gap_extension_penalty + '"') else ""} \
      ~{if (matrix_bonus) then "-matrix_bonus" else ""} \
      ~{if (bonus) then "-bonus" else ""} \
      ~{if (feature) then "-feature" else ""} \
      ~{if (same_feature_score) then "-same_feature_score" else ""} \
      ~{if (diff_feature_score) then "-diff_feature_score" else ""} \
      ~{if (distance) then "-distance" else ""} \
      ~{if (guide_tree) then "-guide-tree" else ""} \
      ~{if (tree) then "-tree" else ""} \
      ~{if (z_cut_off) then "-zcutoff" else ""} \
      ~{if (the_input_file) then "-input" else ""} \
      ~{if (the_output_file) then "-infile" else ""} \
      ~{if (parameter_increases_penalties) then "-outfile" else ""} \
      ~{if (format) then "-format" else ""} \
      ~{if (quiet) then "-quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gap_open: "Gap open penalty"
    gap_extension: "Gap extension penalty"
    terminal_gap_extension_penalty: "gap penalties"
    matrix_bonus: "A constant added to the substitution matrix."
    bonus: "The order in which the sequences appear in the output alignment.\\n<input, tree, gaps.>"
    feature: "Selects feature mode and specifies which features are to be used:\\ne.g. all, maxplp, STRUCT, PFAM-A...."
    same_feature_score: "Score for aligning same features"
    diff_feature_score: "Penalty for aligning different features"
    distance: "Distance method.\\n<wu,pair>"
    guide_tree: "Guide tree method."
    tree: "<nj,upgma>"
    z_cut_off: "Parameter used in the wu-manber based distance calculation"
    the_input_file: "The input file."
    the_output_file: "The output file."
    parameter_increases_penalties: "Parameter increases gap penalties depending on the number of existing gaps"
    format: "The output format:\\n<fasta, msf, aln, clu, macsim>"
    quiet: "Print nothing to STDERR.\\nRead nothing from STDIN"
    k_align_two: ""
    var_18: ""
    var_19: ""
  }
  output {
    File out_stdout = stdout()
    File out_the_output_file = "${in_the_output_file}"
  }
}