version 1.0

task Mbsitemerger {
  input {
    String? factor_table
    String all_sites
    String out_table
  }
  command <<<
    mb_site_merger \
      ~{all_sites} \
      ~{out_table} \
      ~{if defined(factor_table) then ("--factor_table " +  '"' + factor_table + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    factor_table: ""
    all_sites: "mock_table"
    out_table: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}