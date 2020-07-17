version 1.0

task GfapyValidate {
  input {
    File filename
  }
  command <<<
    gfapy-validate \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
}