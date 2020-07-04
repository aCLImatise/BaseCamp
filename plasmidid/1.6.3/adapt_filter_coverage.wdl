version 1.0

task AdaptFilterCoverage.sh {
  input {
    String? usage_message
  }
  command <<<
    adapt_filter_coverage.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}