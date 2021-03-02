version 1.0

task PblayoutM4tosg {
  input {
    Int in_do_tm_four
    String out_dots_g
  }
  command <<<
    pblayout m4_to_sg \
      ~{in_do_tm_four} \
      ~{out_dots_g}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    in_do_tm_four: "STR  Input M4 or M4F."
    out_dots_g: "STR  Output SG."
  }
  output {
    File out_stdout = stdout()
  }
}