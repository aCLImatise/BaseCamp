version 1.0

task FwdppConfig {
  input {
    String print
    String out
    String version
    String number
    String and
    String exit
  }
  command <<<
    fwdppConfig \
      ~{print} \
      ~{out} \
      ~{version} \
      ~{number} \
      ~{and} \
      ~{exit}
  >>>
  parameter_meta {
    print: ""
    out: ""
    version: ""
    number: ""
    and: ""
    exit: ""
  }
}