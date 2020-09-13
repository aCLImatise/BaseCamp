version 1.0

task EnsemblGenes {
  input {
    Boolean? more_options
    Boolean? options
  }
  command <<<
    ensembl_genes \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}