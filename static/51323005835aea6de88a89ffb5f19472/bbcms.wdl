version 1.0

task Bbcms.sh {
  input {
    String in
  }
  command <<<
    bbcms.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}