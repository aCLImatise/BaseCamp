version 1.0

task TaxonFilterpyFile {
  input {
    String tax_on_filter_do_tpy
    String subcommand
  }
  command <<<
    taxon_filter_py file \
      ~{tax_on_filter_do_tpy} \
      ~{subcommand}
  >>>
  parameter_meta {
    tax_on_filter_do_tpy: ""
    subcommand: ""
  }
  output {
    File out_stdout = stdout()
  }
}