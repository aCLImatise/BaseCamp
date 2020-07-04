version 1.0

task Kapastats.sh {
  input {
    String in
  }
  command <<<
    kapastats.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}