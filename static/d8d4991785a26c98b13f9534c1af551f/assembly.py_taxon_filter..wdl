version 1.0

task AssemblypyTaxonFilter {
  input {
    String assembly_do_tpy
    String subcommand
  }
  command <<<
    assembly_py taxon_filter_ \
      ~{assembly_do_tpy} \
      ~{subcommand}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly_do_tpy: ""
    subcommand: ""
  }
  output {
    File out_stdout = stdout()
  }
}