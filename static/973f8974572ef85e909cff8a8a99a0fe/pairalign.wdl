version 1.0

task Pairalign {
  input {
    String? arguments
  }
  command <<<
    pairalign \
      ~{arguments}
  >>>
  parameter_meta {
    arguments: ""
  }
}