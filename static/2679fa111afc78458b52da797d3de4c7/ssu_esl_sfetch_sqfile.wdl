version 1.0

task SsuEslSfetchSqfile {
  input {
    String name
  }
  command <<<
    ssu-esl-sfetch sqfile \
      ~{name}
  >>>
  parameter_meta {
    name: ""
  }
}