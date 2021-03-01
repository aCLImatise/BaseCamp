version 1.0

task PblayoutSgtosg {
  input {
    String in_dots_g
    String out_dots_g
  }
  command <<<
    pblayout sg_to_sg \
      ~{in_dots_g} \
      ~{out_dots_g}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbipa:1.3.2--hee625c5_0"
  }
  parameter_meta {
    in_dots_g: "STR  Input SG."
    out_dots_g: "STR  Output SG."
  }
  output {
    File out_stdout = stdout()
  }
}