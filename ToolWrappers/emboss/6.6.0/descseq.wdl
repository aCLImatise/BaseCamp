version 1.0

task Descseq {
  input {
    Boolean? name
    Boolean? description
    Boolean? append
  }
  command <<<
    descseq \
      ~{if (name) then "-name" else ""} \
      ~{if (description) then "-description" else ""} \
      ~{if (append) then "-append" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "string     Name of the sequence (Any string)"
    description: "string     Description of the sequence (Any string)"
    append: "boolean    [N] This allows you to append the name or\\ndescription you have given on to the end of\\nthe existing name or description of the\\nsequence."
  }
  output {
    File out_stdout = stdout()
  }
}