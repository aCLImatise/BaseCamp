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
    docker: "None"
  }
  parameter_meta {
    range: ""
    threshold_value: ""
  }
  output {
    File out_stdout = stdout()
  }
}