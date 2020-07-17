version 1.0

task MbSiteMerger {
  input {
    String? factor_table
  }
  command <<<
    mb-site-merger \
      ~{if defined(factor_table) then ("--factor_table " +  '"' + factor_table + '"') else ""}
  >>>
  parameter_meta {
    factor_table: ""
  }
}