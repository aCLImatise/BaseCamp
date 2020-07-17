version 1.0

task PslToBed {
  input {
    String psl
    String bed
  }
  command <<<
    pslToBed \
      ~{psl} \
      ~{bed}
  >>>
  parameter_meta {
    psl: ""
    bed: ""
  }
}