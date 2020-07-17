version 1.0

task Gerpcol {
  input {
    Boolean? verbose_mode
    String? evolutionary_tree
    File? alignment_filename
    Boolean? alignment_mfa_format
    String? name_reference_sequence
    Boolean? project_reference_sequence
    String? trtv_ratio
    String? tolerance_rate_estimation
    String? start_at_position
    String? tree_neutral_rate
    String? tree_scaling_factor
    String? suffix_naming_files
  }
  command <<<
    gerpcol \
      ~{true="-v" false="" verbose_mode} \
      ~{if defined(evolutionary_tree) then ("-t " +  '"' + evolutionary_tree + '"') else ""} \
      ~{if defined(alignment_filename) then ("-f " +  '"' + alignment_filename + '"') else ""} \
      ~{true="-a" false="" alignment_mfa_format} \
      ~{if defined(name_reference_sequence) then ("-e " +  '"' + name_reference_sequence + '"') else ""} \
      ~{true="-j" false="" project_reference_sequence} \
      ~{if defined(trtv_ratio) then ("-r " +  '"' + trtv_ratio + '"') else ""} \
      ~{if defined(tolerance_rate_estimation) then ("-p " +  '"' + tolerance_rate_estimation + '"') else ""} \
      ~{if defined(start_at_position) then ("-z " +  '"' + start_at_position + '"') else ""} \
      ~{if defined(tree_neutral_rate) then ("-n " +  '"' + tree_neutral_rate + '"') else ""} \
      ~{if defined(tree_scaling_factor) then ("-s " +  '"' + tree_scaling_factor + '"') else ""} \
      ~{if defined(suffix_naming_files) then ("-x " +  '"' + suffix_naming_files + '"') else ""}
  >>>
  parameter_meta {
    verbose_mode: "verbose mode"
    evolutionary_tree: "evolutionary tree"
    alignment_filename: "alignment filename"
    alignment_mfa_format: "alignment in mfa format [default = false]"
    name_reference_sequence: "name of reference sequence"
    project_reference_sequence: "project out reference sequence"
    trtv_ratio: "Tr/Tv ratio [default = 2.0]"
    tolerance_rate_estimation: "tolerance for rate estimation [default = 0.001]"
    start_at_position: "start at position 0 [default = false]"
    tree_neutral_rate: "tree neutral rate [default = compute from tree]"
    tree_scaling_factor: "tree scaling factor [default = 1.0]"
    suffix_naming_files: "suffix for naming output files [default = \".rates\"]"
  }
}