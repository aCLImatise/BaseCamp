version 1.0

task FwdppConfig {
  input {
    String print
    String out
    String version
    Int number
    String and
  }
  command <<<
    fwdppConfig \
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