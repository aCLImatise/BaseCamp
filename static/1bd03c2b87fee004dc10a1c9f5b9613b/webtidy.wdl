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
      ~{if (context) then "--context" else ""} \
      ~{if (no_errors) then "--noerrors" else ""} \
      ~{if (no_warnings) then "--nowarnings" else ""}
  >>>
  parameter_meta {
    context: "[=n]   Show the offending line (and n surrounding lines)"
    no_errors: "Ignore errors"
    no_warnings: "Ignore warnings"
    filename: ""
    or: ""
    url: ""
  }
  output {
    File out_stdout = stdout()
  }
}