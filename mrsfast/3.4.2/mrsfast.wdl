version 1.0

task Mrsfast {
  input {
    String treated
  }
  command <<<
    mrsfast \
      ~{treated}
  >>>
  parameter_meta {
    treated: "sequences are not supported in this version."
  }
}