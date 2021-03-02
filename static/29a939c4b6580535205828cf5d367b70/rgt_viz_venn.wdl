version 1.0

task RgtvizVenn {
  input {
    Boolean? s_one
    Boolean? s_two
    Boolean? s_three
    Boolean? s_four
    Boolean? lone
    Boolean? l_two
    Boolean? l_three
    Boolean? l_four
    Directory? directory_name_output
    Boolean? title_shown_venndiagram
    Boolean? organism
  }
  command <<<
    rgt_viz venn \
      ~{if (s_one) then "-s1" else ""} \
      ~{if (s_two) then "-s2" else ""} \
      ~{if (s_three) then "-s3" else ""} \
      ~{if (s_four) then "-s4" else ""} \
      ~{if (lone) then "-l1" else ""} \
      ~{if (l_two) then "-l2" else ""} \
      ~{if (l_three) then "-l3" else ""} \
      ~{if (l_four) then "-l4" else ""} \
      ~{if (directory_name_output) then "-o" else ""} \
      ~{if (title_shown_venndiagram) then "-t" else ""} \
      ~{if (organism) then "-organism" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    s_one: "Define the file for gene set 1 (BED or gene list)"
    s_two: "Define the file for gene set 2 (BED or gene list)"
    s_three: "Define the file for gene set 3 (BED or gene list)"
    s_four: "Define the file for gene set 3 (BED or gene list)"
    lone: "Define label on venn diagram for set 1"
    l_two: "Define label on venn diagram for set 2"
    l_three: "Define label on venn diagram for set 3"
    l_four: "Define label on venn diagram for set 4"
    directory_name_output: "The directory name for the output files. For example, project\\nname. (default: None)"
    title_shown_venndiagram: "The title shown on the top of the plot and also the folder\\nname. (default: venn_diagram)"
    organism: "Define the organism."
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_name_output = "${in_directory_name_output}"
  }
}