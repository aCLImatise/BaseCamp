version 1.0

task Callvariants2.sh {
  input {
    String call_variants_dots_h
    String in
  }
  command <<<
    callvariants2.sh \
      ~{call_variants_dots_h} \
      ~{in}
  >>>
  parameter_meta {
    call_variants_dots_h: ""
    in: ""
  }
}