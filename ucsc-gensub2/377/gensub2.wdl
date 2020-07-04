version 1.0

task Gensub2 {
  input {
    Boolean? group_one
    Boolean? group_two
    File file_list_one
    File file_list_two
    String template_file
    String output_file
  }
  command <<<
    gensub2 \
      ~{file_list_one} \
      ~{file_list_two} \
      ~{template_file} \
      ~{output_file} \
      ~{true="-group1" false="" group_one} \
      ~{true="-group2" false="" group_two}
  >>>
  parameter_meta {
    group_one: "- write elements in order Aa Ab Ac Ba Bb Bc Ca Cb Cc"
    group_two: "- write elements in order Aa Ba Ca Ab Bb Cb Ac Bc Cc"
    file_list_one: ""
    file_list_two: ""
    template_file: ""
    output_file: ""
  }
}