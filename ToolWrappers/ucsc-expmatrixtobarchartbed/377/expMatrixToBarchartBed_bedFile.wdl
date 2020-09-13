version 1.0

task ExpMatrixToBarchartBedBedFile {
  input {
    String? auto_sql
    String exp_matrix_to_barchart_bed
  }
  command <<<
    expMatrixToBarchartBed bedFile \
      ~{exp_matrix_to_barchart_bed} \
      ~{if defined(auto_sql) then ("--autoSql " +  '"' + auto_sql + '"') else ""}
  >>>
  parameter_meta {
    auto_sql: ""
    exp_matrix_to_barchart_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}