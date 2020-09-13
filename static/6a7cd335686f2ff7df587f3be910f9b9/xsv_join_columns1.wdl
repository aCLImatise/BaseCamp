version 1.0

task XsvJoinColumns1 {
  input {
    Int input_one
    String xsv
    Int columns_two
    String join
  }
  command <<<
    xsv join columns1 \
      ~{input_one} \
      ~{xsv} \
      ~{columns_two} \
      ~{join}
  >>>
  parameter_meta {
    input_one: ""
    xsv: ""
    columns_two: ""
    join: ""
  }
  output {
    File out_stdout = stdout()
  }
}