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
      ~{if (view) then "--view" else ""} \
      ~{if (copy) then "--copy" else ""} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (c_hhv) then "-chHv" else ""}
  >>>
  parameter_meta {
    view: "Write textual form of FILEs to standard output"
    copy: "Copy the exact contents of FILE to DESTFILE"
    no_header: "Suppress header display in view mode"
    verbose: "Increase verbosity of warnings and diagnostics"
    c_hhv: ""
    file_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}