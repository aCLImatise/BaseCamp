version 1.0

task LabelAnalysisRunPostInstallTestsbats {
  input {
    Boolean? count
    Boolean? pretty
    Boolean? tap
    String bats
  }
  command <<<
    label_analysis_run_post_install_tests_bats \
      ~{bats} \
      ~{if (count) then "--count" else ""} \
      ~{if (pretty) then "--pretty" else ""} \
      ~{if (tap) then "--tap" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cell-types-analysis:0.1.11--0"
  }
  parameter_meta {
    count: "Count the number of test cases without running any tests"
    pretty: "Show results in pretty format (default for terminals)"
    tap: "Show results in TAP format"
    bats: ""
  }
  output {
    File out_stdout = stdout()
  }
}