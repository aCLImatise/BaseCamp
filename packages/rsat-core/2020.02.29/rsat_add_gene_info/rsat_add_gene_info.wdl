version 1.0

task RsatAddgeneinfo {
  input {
    String add_gene_info
  }
  command <<<
    rsat add_gene_info \
      ~{add_gene_info}
  >>>
  parameter_meta {
    add_gene_info: "DESCRIPTION"
  }
  output {
    File out_stdout = stdout()
  }
}