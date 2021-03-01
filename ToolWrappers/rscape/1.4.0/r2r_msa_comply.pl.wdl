version 1.0

task R2rMsaComplypl {
  command <<<
    r2r_msa_comply_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}