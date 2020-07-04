version 1.0

task Wdl {
  input {
    Boolean? debug
    Boolean? no_color
  }
  command <<<
    wdl \
      ~{true="--debug" false="" debug} \
      ~{true="--no-color" false="" no_color}
  >>>
  parameter_meta {
    debug: "Open the floodgates"
    no_color: "Don't colorize output"
  }
}