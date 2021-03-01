version 1.0

task MerauderOPTION {
  input {
    Int max
    String insert
    Int size
    String is
    String required
  }
  command <<<
    merauder OPTION___ \
      ~{max} \
      ~{insert} \
      ~{size} \
      ~{is} \
      ~{required}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    max: ""
    insert: ""
    size: ""
    is: ""
    required: ""
  }
  output {
    File out_stdout = stdout()
  }
}