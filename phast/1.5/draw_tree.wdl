version 1.0

task DrawTree {
  input {
    Boolean? print_opposed_option
    Boolean? suppress_branch_lengths
    Boolean? vertical_layout
    Boolean? draw_branches_scale
    Boolean? db_vs
    String tree_dot_nh
  }
  command <<<
    draw_tree \
      ~{tree_dot_nh} \
      ~{if (print_opposed_option) then "-d" else ""} \
      ~{if (suppress_branch_lengths) then "-b" else ""} \
      ~{if (vertical_layout) then "-v" else ""} \
      ~{if (draw_branches_scale) then "-s" else ""} \
      ~{if (db_vs) then "-dbvs" else ""}
  >>>
  parameter_meta {
    print_opposed_option: "Print \\\"diagonal\\\" branches, instead of \\\"right-angle\\\" or\\n\\\"square\\\" ones (produces a \\\"cladogram\\\", as opposed to a\\n\\\"phenogram\\\").  This option implies -s."
    suppress_branch_lengths: "Suppress branch lengths."
    vertical_layout: "Vertical layout."
    draw_branches_scale: "Don't draw branches to scale."
    db_vs: ""
    tree_dot_nh: ""
  }
  output {
    File out_stdout = stdout()
  }
}