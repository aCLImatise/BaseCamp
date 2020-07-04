version 1.0

task Mergepgm.sh {
  input {
    String in
  }
  command <<<
    mergepgm.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}