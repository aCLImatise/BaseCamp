version 1.0

task QualityTrim.sh {
  input {
    String? usage_message
  }
  command <<<
    quality_trim.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}