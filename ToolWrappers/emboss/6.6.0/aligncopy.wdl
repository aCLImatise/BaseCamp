version 1.0

task Aligncopy {
  input {
    Boolean? name
    Boolean? comment
    Boolean? append
  }
  command <<<
    aligncopy \
      ~{if (name) then "-name" else ""} \
      ~{if (comment) then "-comment" else ""} \
      ~{if (append) then "-append" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "string     Name of the alignment (Any string)"
    comment: "string     Comment on the alignment (Any string)"
    append: "boolean    [N] This allows you to append the name and\\ncomments you have given on to the end of the\\nexisting alignment header."
  }
  output {
    File out_stdout = stdout()
  }
}