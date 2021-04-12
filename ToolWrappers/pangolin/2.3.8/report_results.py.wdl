version 1.0

task ReportResultspy {
  input {
    String? pangolin_output
    String? background_data_csv
    String? o
  }
  command <<<
    report_results_py \
      ~{if defined(pangolin_output) then ("-p " +  '"' + pangolin_output + '"') else ""} \
      ~{if defined(background_data_csv) then ("-b " +  '"' + background_data_csv + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pangolin:2.3.8--py_0"
  }
  parameter_meta {
    pangolin_output: "pangolin output"
    background_data_csv: "background data csv"
    o: "output"
  }
  output {
    File out_stdout = stdout()
  }
}