version 1.0

task ExpMatrixToBarchartBedOutputFile {
  input {
    String? auto_sql
    String exp_matrix_to_barchart_bed
  }
  command <<<
    expMatrixToBarchartBed outputFile \
      ~{exp_matrix_to_barchart_bed} \
      ~{if defined(auto_sql) then ("--autoSql " +  '"' + auto_sql + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    auto_sql: ""
    exp_matrix_to_barchart_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}