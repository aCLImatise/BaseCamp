version 1.0

task CsOUTBASEGeneREGIONbed {
  input {
    String cs
  }
  command <<<
    cs OUTBASE_gene_REGION_bed \
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