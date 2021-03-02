version 1.0

task GffCheck {
  input {
    String gff
  }
  command <<<
    gff_check \
      ~{gff}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ncbi-amrfinderplus:3.9.8--h671e170_0"
  }
  parameter_meta {
    gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}