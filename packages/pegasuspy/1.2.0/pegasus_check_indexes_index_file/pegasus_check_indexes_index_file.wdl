version 1.0

task PegasusCheckIndexesIndexFile {
  input {
    String? report
    Int? num_mismatch
    String pegasus
    String check_indexes
  }
  command <<<
    pegasus check_indexes index_file \
      ~{pegasus} \
      ~{check_indexes} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(num_mismatch) then ("--num-mismatch " +  '"' + num_mismatch + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pegasuspy:1.2.0--py38h0213d0e_1"
  }
  parameter_meta {
    report: ""
    num_mismatch: ""
    pegasus: ""
    check_indexes: ""
  }
  output {
    File out_stdout = stdout()
  }
}