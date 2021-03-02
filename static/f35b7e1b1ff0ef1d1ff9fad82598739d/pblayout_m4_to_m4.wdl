version 1.0

task PblayoutM4tom4 {
  input {
    Int in_do_tm_four
    Int out_do_tm_four
  }
  command <<<
    pblayout m4_to_m4 \
      ~{in_do_tm_four} \
      ~{out_do_tm_four}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    in_do_tm_four: "STR  Input M4."
    out_do_tm_four: "STR  Output M4."
  }
  output {
    File out_stdout = stdout()
  }
}