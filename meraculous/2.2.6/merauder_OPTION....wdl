version 1.0

task MerauderOPTION... {
  input {
    Int max
    String insert
    Int size
    String is
    String required
  }
  command <<<
    merauder OPTION... \
      ~{max} \
      ~{insert} \
      ~{size} \
      ~{is} \
      ~{required}
  >>>
  parameter_meta {
    max: ""
    insert: ""
    size: ""
    is: ""
    required: ""
  }
}