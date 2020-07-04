version 1.0

task Webtidy {
  input {
    Boolean? context
    Boolean? no_errors
    Boolean? no_warnings
    File? filename
    String? or
    String? url
  }
  command <<<
    webtidy \
      ~{filename} \
      ~{or} \
      ~{url} \
      ~{true="--context" false="" context} \
      ~{true="--noerrors" false="" no_errors} \
      ~{true="--nowarnings" false="" no_warnings}
  >>>
  parameter_meta {
    context: "[=n]   Show the offending line (and n surrounding lines)"
    no_errors: "Ignore errors"
    no_warnings: "Ignore warnings"
    filename: ""
    or: ""
    url: ""
  }
}