version 1.0

task MedakaTools {
  input {
    Boolean? debug
    Boolean? quiet
  }
  command <<<
    medaka tools \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
  }
}