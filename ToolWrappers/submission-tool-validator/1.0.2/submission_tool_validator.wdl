version 1.0

task Submissiontoolvalidator {
  command <<<
    submission_tool_validator
  >>>
  runtime {
    docker: "quay.io/biocontainers/submission-tool-validator:1.0.2--0"
  }
  output {
    File out_stdout = stdout()
  }
}