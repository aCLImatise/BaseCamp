version 1.0

task StrainestMapgenomes {
  input {
    String genomes_dot_dot_dot
    String reference
    String mapped
  }
  command <<<
    strainest mapgenomes \
      ~{genomes_dot_dot_dot} \
      ~{reference} \
      ~{mapped}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genomes_dot_dot_dot: ""
    reference: ""
    mapped: ""
  }
  output {
    File out_stdout = stdout()
  }
}