version 1.0

task PblayoutM4Index {
  input {
    String in_do_tm_four
  }
  command <<<
    pblayout m4-index \
      ~{in_do_tm_four}
  >>>
  parameter_meta {
    in_do_tm_four: "STR  Input M4."
  }
}