version 1.0

task Keepbestcopy.sh {
  input {
    String keep_best_dots_h
    String in
  }
  command <<<
    keepbestcopy.sh \
      ~{keep_best_dots_h} \
      ~{in}
  >>>
  parameter_meta {
    keep_best_dots_h: ""
    in: ""
  }
}