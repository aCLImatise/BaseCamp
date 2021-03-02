version 1.0

task TaxonFilterpyFile {
  input {
    String tax_on_filter_do_tpy
    String subcommand
  }
  command <<<
    taxon_filter_py file_ \
      ~{tax_on_filter_do_tpy} \
      ~{subcommand}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tax_on_filter_do_tpy: ""
    subcommand: ""
  }
  output {
    File out_stdout = stdout()
  }
}