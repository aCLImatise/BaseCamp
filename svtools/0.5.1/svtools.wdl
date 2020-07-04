version 1.0

task Svtools {
  input {
    Boolean? support
  }
  command <<<
    svtools \
      ~{true="--support" false="" support}
  >>>
  parameter_meta {
    support: "information on obtaining support"
  }
}