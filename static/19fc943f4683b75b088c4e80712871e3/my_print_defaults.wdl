version 1.0

task MyPrintDefaults {
  input {
    Boolean? verbose
    String groups
  }
  command <<<
    my_print_defaults \
      ~{groups} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "Increase the output level"
    groups: ""
  }
}