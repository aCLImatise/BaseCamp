version 1.0

task CtEnergy {
  input {
    String? option
    File? file
  }
  command <<<
    ct-energy \
      ~{option} \
      ~{file}
  >>>
  parameter_meta {
    option: ""
    file: ""
  }
}