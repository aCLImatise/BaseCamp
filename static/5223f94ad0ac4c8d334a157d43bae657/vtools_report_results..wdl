version 1.0

task VtoolsReportResults {
  input {
    String v_tools_report
  }
  command <<<
    vtools_report results_ \
      ~{v_tools_report}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    v_tools_report: ""
  }
  output {
    File out_stdout = stdout()
  }
}