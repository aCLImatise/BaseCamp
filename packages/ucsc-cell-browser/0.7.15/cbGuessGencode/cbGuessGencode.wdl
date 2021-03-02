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
    docker: "quay.io/biocontainers/ucsc-cell-browser:0.7.15--py_0"
  }
  parameter_meta {
    debug: "show debug messages"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}