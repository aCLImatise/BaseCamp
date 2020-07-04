version 1.0

task Tadpole.sh {
  input {
    String assembly
  }
  command <<<
    tadpole.sh \
      ~{assembly}
  >>>
  parameter_meta {
    assembly: ""
  }
}