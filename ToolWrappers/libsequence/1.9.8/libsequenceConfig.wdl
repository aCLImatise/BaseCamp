version 1.0

task LibsequenceConfig {
  input {
    String print
    String out
    String version
    Int number
    String and
  }
  command <<<
    libsequenceConfig \
      ~{print} \
      ~{out} \
      ~{version} \
      ~{number} \
      ~{and}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print: ""
    out: ""
    version: ""
    number: ""
    and: ""
  }
  output {
    File out_stdout = stdout()
  }
}