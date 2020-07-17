version 1.0

task Htmltree {
  input {
    Boolean? sets_htmltreebuilderdebug_figure
    Boolean? turns_treewarn_new
    Boolean? d_three
    File file_two
    File file_three
  }
  command <<<
    htmltree \
      ~{file_two} \
      ~{file_three} \
      ~{true="-D" false="" sets_htmltreebuilderdebug_figure} \
      ~{true="-w" false="" turns_treewarn_new} \
      ~{true="-D3" false="" d_three}
  >>>
  parameter_meta {
    sets_htmltreebuilderdebug_figure: "[number]  sets HTML::TreeBuilder::Debug to that figure."
    turns_treewarn_new: "turns on $tree->warn(1) for the new tree"
    d_three: ""
    file_two: ""
    file_three: ""
  }
}