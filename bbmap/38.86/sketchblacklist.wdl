version 1.0

task Sketchblacklist.sh {
  input {
    String in
  }
  command <<<
    sketchblacklist.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}