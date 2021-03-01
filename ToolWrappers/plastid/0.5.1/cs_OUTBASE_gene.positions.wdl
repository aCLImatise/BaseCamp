version 1.0

task CsOUTBASEGenepositions {
  input {
    String cs
  }
  command <<<
    cs OUTBASE_gene_positions \
      ~{cs}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cs: ""
  }
  output {
    File out_stdout = stdout()
  }
}