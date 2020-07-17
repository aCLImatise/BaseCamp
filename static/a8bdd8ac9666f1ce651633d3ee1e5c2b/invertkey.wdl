version 1.0

task Invertkey.sh {
  input {
    String invert_sketch_dots_h
    String in
  }
  command <<<
    invertkey.sh \
      ~{invert_sketch_dots_h} \
      ~{in}
  >>>
  parameter_meta {
    invert_sketch_dots_h: ""
    in: ""
  }
}