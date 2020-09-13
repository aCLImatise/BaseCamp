version 1.0

task MedakaTools {
  input {
    Boolean? debug
    Boolean? quiet
  }
  command <<<
    medaka tools \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
  }
  output {
    File out_stdout = stdout()
  }
}