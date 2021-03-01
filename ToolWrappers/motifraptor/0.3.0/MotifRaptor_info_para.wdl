version 1.0

task MotifRaptorInfoPara {
  input {
    String motif_raptor
    String info
  }
  command <<<
    MotifRaptor info para \
      ~{motif_raptor} \
      ~{info}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    motif_raptor: ""
    info: ""
  }
  output {
    File out_stdout = stdout()
  }
}