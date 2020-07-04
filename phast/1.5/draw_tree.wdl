version 1.0

task DrawTree {
  input {
    Boolean? print_option_implies
    Boolean? suppress_branch_lengths
    Boolean? vertical_layout
    Boolean? draw_branches_scale
    Boolean? db_vs
    String tree_dot_nh
  }
  command <<<
    draw_tree \
      ~{tree_dot_nh} \
      ~{true="-d" false="" print_option_implies} \
      ~{true="-b" false="" suppress_branch_lengths} \
      ~{true="-v" false="" vertical_layout} \
      ~{true="-s" false="" draw_branches_scale} \
      ~{true="-dbvs" false="" db_vs}
  >>>
  parameter_meta {
    print_option_implies: "Print \"diagonal\" branches, instead of \"right-angle\" or  \"square\" ones (produces a \"cladogram\", as opposed to a  \"phenogram\").  This option implies -s."
    suppress_branch_lengths: "Suppress branch lengths."
    vertical_layout: "Vertical layout."
    draw_branches_scale: "Don't draw branches to scale."
    db_vs: ""
    tree_dot_nh: ""
  }
}