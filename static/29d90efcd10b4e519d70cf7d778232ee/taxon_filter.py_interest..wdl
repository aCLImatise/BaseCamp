version 1.0

task TaxonFilterpyInterest {
  input {
    String tax_on_filter_do_tpy
    String subcommand
  }
  command <<<
    taxon_filter_py interest_ \
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