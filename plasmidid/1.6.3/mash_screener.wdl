version 1.0

task MashScreener.sh {
  input {
    String? usage_message
  }
  command <<<
    mash_screener.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}