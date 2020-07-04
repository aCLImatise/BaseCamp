version 1.0

task Mcx {
  input {
    String mode
    File? files
  }
  command <<<
    mcx \
      ~{mode} \
      ~{files}
  >>>
  parameter_meta {
    mode: ""
    files: ""
  }
}