version 1.0

task MyPrintDefaults {
  input {
    Boolean verboseVerbose
  }
  command <<<
    my_print_defaults \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}