version 1.0

task RgtVizVenn {
  input {
    Boolean? s_one
    Boolean? s_two
    Boolean? s_three
    Boolean? s_four
    Boolean? lone
    Boolean? l_two
    Boolean? l_three
    Boolean? l_four
    Boolean? directory_name_output
    Boolean? title_shown_top
    Boolean? organism
  }
  command <<<
    rgt-viz venn \
      ~{true="-s1" false="" s_one} \
      ~{true="-s2" false="" s_two} \
      ~{true="-s3" false="" s_three} \
      ~{true="-s4" false="" s_four} \
      ~{true="-l1" false="" lone} \
      ~{true="-l2" false="" l_two} \
      ~{true="-l3" false="" l_three} \
      ~{true="-l4" false="" l_four} \
      ~{true="-o" false="" directory_name_output} \
      ~{true="-t" false="" title_shown_top} \
      ~{true="-organism" false="" organism}
  >>>
  parameter_meta {
    s_one: "Define the file for gene set 1 (BED or gene list)"
    s_two: "Define the file for gene set 2 (BED or gene list)"
    s_three: "Define the file for gene set 3 (BED or gene list)"
    s_four: "Define the file for gene set 3 (BED or gene list)"
    lone: "Define label on venn diagram for set 1"
    l_two: "Define label on venn diagram for set 2"
    l_three: "Define label on venn diagram for set 3"
    l_four: "Define label on venn diagram for set 4"
    directory_name_output: "The directory name for the output files. For example, project name. (default: None)"
    title_shown_top: "The title shown on the top of the plot and also the folder name. (default: venn_diagram)"
    organism: "Define the organism."
  }
}