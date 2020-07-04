version 1.0

task EslSfetchSqfile {
  input {
    String name
  }
  command <<<
    esl-sfetch sqfile \
      ~{name}
  >>>
  parameter_meta {
    name: ""
  }
}