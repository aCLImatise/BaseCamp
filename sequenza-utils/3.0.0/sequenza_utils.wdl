version 1.0

task SequenzaUtils {
  input {
    Boolean? verbose
  }
  command <<<
    sequenza-utils \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "Show all logging information"
  }
}