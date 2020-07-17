version 1.0

task TadaridaC.r {
  input {
    File file
    String classifier
  }
  command <<<
    tadaridaC.r \
      ~{file} \
      ~{classifier}
  >>>
  parameter_meta {
    file: ""
    classifier: ""
  }
}