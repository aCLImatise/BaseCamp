version 1.0

task Mbsitemerger {
  input {
    String? factor_table
  }
  command <<<
    mb_site_merger \
      ~{if defined(factor_table) then ("--factor_table " +  '"' + factor_table + '"') else ""}
  >>>
  parameter_meta {
    factor_table: ""
  }
  output {
    File out_stdout = stdout()
  }
}