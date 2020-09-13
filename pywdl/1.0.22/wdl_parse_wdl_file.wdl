version 1.0

task WdlParseWdlFile {
  input {
    Boolean? no_color
    Boolean? debug
    String wdl
  }
  command <<<
    wdl parse wdl_file \
      ~{wdl} \
      ~{if (no_color) then "--no-color" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    no_color: ""
    debug: ""
    wdl: ""
  }
  output {
    File out_stdout = stdout()
  }
}