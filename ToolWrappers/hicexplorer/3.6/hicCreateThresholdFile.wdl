version 1.0

task HicCreateThresholdFile {
  input {
    String? range
    String? threshold_value
  }
  command <<<
    hicCreateThresholdFile \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(threshold_value) then ("--thresholdValue " +  '"' + threshold_value + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    range: ""
    threshold_value: ""
  }
  output {
    File out_stdout = stdout()
  }
}