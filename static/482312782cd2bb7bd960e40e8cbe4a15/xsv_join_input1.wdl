version 1.0

task XsvJoinInput1 {
  input {
    String xsv
    String join
    Int columns_one
    Int input_one
    Int columns_two
  }
  command <<<
    xsv join input1 \
      ~{xsv} \
      ~{join} \
      ~{columns_one} \
      ~{input_one} \
      ~{columns_two}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    xsv: ""
    join: ""
    columns_one: ""
    input_one: ""
    columns_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}