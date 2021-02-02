version 1.0

task Htmltree {
  input {
    Boolean? sets_htmltreebuilderdebug_figure
    Boolean? turns_treewarn_new
    Boolean? d_three
    Int file_two
    Int file_three
  }
  command <<<
    htmltree \
      ~{file_two} \
      ~{file_three} \
      ~{if (sets_htmltreebuilderdebug_figure) then "-D" else ""} \
      ~{if (turns_treewarn_new) then "-w" else ""} \
      ~{if (d_three) then "-D3" else ""}
  >>>
  parameter_meta {
    sets_htmltreebuilderdebug_figure: "[number]  sets HTML::TreeBuilder::Debug to that figure."
    turns_treewarn_new: "turns on $tree->warn(1) for the new tree"
    d_three: ""
    file_two: ""
    file_three: ""
  }
  output {
    File out_stdout = stdout()
  }
}