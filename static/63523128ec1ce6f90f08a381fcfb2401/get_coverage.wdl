version 1.0

task GetCoverage.sh {
  input {
    String? usage_message
  }
  command <<<
    get_coverage.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}