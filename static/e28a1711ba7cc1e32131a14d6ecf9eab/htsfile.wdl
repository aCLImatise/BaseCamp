version 1.0

task Htsfile {
  input {
    Boolean? view
    Boolean? copy
    Boolean? no_header
    Boolean? verbose
    Boolean? c_hhv
    File file_dot_dot_dot
  }
  command <<<
    htsfile \
      ~{file_dot_dot_dot} \
      ~{true="--view" false="" view} \
      ~{true="--copy" false="" copy} \
      ~{true="--no-header" false="" no_header} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-chHv" false="" c_hhv}
  >>>
  parameter_meta {
    view: "Write textual form of FILEs to standard output"
    copy: "Copy the exact contents of FILE to DESTFILE"
    no_header: "Suppress header display in view mode"
    verbose: "Increase verbosity of warnings and diagnostics"
    c_hhv: ""
    file_dot_dot_dot: ""
  }
}