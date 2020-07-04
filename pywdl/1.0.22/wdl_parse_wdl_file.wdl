version 1.0

task WdlParseWdlFile {
  input {
    Boolean? debug
    Boolean? no_color
    String wdl
  }
  command <<<
    wdl parse wdl_file \
      ~{wdl} \
      ~{true="--debug" false="" debug} \
      ~{true="--no-color" false="" no_color}
  >>>
  parameter_meta {
    debug: ""
    no_color: ""
    wdl: ""
  }
}