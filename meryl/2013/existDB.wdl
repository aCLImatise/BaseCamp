version 1.0

task ExistDB {
  input {
    String? stuff
  }
  command <<<
    existDB \
      ~{stuff}
  >>>
  parameter_meta {
    stuff: ""
  }
}