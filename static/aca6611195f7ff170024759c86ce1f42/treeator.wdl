version 1.0

task Treeator {
  input {
    String? default_w
    String? arguments
    String data_file_dot_txt
  }
  command <<<
    treeator \
      ~{arguments} \
      ~{data_file_dot_txt} \
      ~{if defined(default_w) then ("--output " +  '"' + default_w + '"') else ""}
  >>>
  parameter_meta {
    default_w: "(default w)."
    arguments: ""
    data_file_dot_txt: ""
  }
}