version 1.0

task Bbrename.sh {
  input {
    String rename_dots_h
    String in
  }
  command <<<
    bbrename.sh \
      ~{rename_dots_h} \
      ~{in}
  >>>
  parameter_meta {
    rename_dots_h: ""
    in: ""
  }
}