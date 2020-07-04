version 1.0

task KallistoH5dump {
  input {
    String? arguments
    String abundance_doth_five
  }
  command <<<
    kallisto h5dump \
      ~{arguments} \
      ~{abundance_doth_five}
  >>>
  parameter_meta {
    arguments: ""
    abundance_doth_five: ""
  }
}