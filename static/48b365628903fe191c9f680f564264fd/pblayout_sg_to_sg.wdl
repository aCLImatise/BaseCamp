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
    docker: "None"
  }
  parameter_meta {
    in_dots_g: "STR  Input SG."
    out_dots_g: "STR  Output SG."
  }
  output {
    File out_stdout = stdout()
  }
}