version 1.0

task Gensub2 {
  input {
    Boolean? group_one
    Boolean? group_two
    File file_list_one
    File file_list_two
    File template_file
  }
  command <<<
    gensub2 \
      ~{file_list_one} \
      ~{file_list_two} \
      ~{template_file} \
      ~{if (group_one) then "-group1" else ""} \
      ~{if (group_two) then "-group2" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    group_one: "- write elements in order Aa Ab Ac Ba Bb Bc Ca Cb Cc"
    group_two: "- write elements in order Aa Ba Ca Ab Bb Cb Ac Bc Cc"
    file_list_one: ""
    file_list_two: ""
    template_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}