version 1.0

task Babel {
  input {
    Boolean? o
    Boolean? i
    String? input_type
    String name
    String? output_type
  }
  command <<<
    babel \
      ~{input_type} \
      ~{name} \
      ~{output_type} \
      ~{if (o) then "-o" else ""} \
      ~{if (i) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: ""
    i: ""
    input_type: ""
    name: ""
    output_type: ""
  }
  output {
    File out_stdout = stdout()
  }
}