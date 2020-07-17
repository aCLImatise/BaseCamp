version 1.0

task LibsequenceConfig {
  input {
    String print
    String out
    String version
    String number
    String and
    String exit
  }
  command <<<
    libsequenceConfig \
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