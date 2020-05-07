version 1.0

task PrintPicrustConfig.py {
  input {
    Boolean verboseVerbose
  }
  command <<<
    print_picrust_config.py \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}