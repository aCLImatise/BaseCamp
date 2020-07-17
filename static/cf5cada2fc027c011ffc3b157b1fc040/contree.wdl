version 1.0

task Contree {
  input {
    String? as_last_argument
    String? default_w
    String? arguments
    File file_dot_trees
  }
  command <<<
    contree \
      ~{arguments} \
      ~{file_dot_trees} \
      ~{if defined(as_last_argument) then ("-f " +  '"' + as_last_argument + '"') else ""} \
      ~{if defined(default_w) then ("--output " +  '"' + default_w + '"') else ""}
  >>>
  parameter_meta {
    as_last_argument: "as last argument)."
    default_w: "(default w)."
    arguments: ""
    file_dot_trees: ""
  }
}