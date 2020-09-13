version 1.0

task AribaGetref {
  input {
    Boolean? debug
  }
  command <<<
    ariba getref \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    debug: "Do not delete temporary downloaded files"
  }
  output {
    File out_stdout = stdout()
  }
}