version 1.0

task PslPosTarget {
  input {
    String in_psl
    String out_psl
  }
  command <<<
    pslPosTarget \
      ~{in_psl} \
      ~{out_psl}
  >>>
  parameter_meta {
    in_psl: ""
    out_psl: ""
  }
}