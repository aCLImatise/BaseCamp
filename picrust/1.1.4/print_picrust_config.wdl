version 1.0

task PrintPicrustConfig.py {
  input {
    Boolean? verbose
  }
  command <<<
    print_picrust_config.py \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "Print information during execution -- useful for debugging [default: False]"
  }
}