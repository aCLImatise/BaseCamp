version 1.0

task Testformat2.sh {
  input {
    File file
  }
  command <<<
    testformat2.sh \
      ~{file}
  >>>
  parameter_meta {
    file: ""
  }
}