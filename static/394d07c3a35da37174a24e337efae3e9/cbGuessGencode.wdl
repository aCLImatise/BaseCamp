version 1.0

task CbGuessGencode {
  input {
    Boolean? debug
    File filename
  }
  command <<<
    cbGuessGencode \
      ~{filename} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "show debug messages"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}