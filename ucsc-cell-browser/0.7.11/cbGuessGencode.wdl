version 1.0

task CbGuessGencode {
  input {
    Boolean? debug
    File filename
  }
  command <<<
    cbGuessGencode \
      ~{filename} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    debug: "show debug messages"
    filename: ""
  }
}