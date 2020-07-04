version 1.0

task Fungalrelease.sh {
  input {
    String in
  }
  command <<<
    fungalrelease.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}