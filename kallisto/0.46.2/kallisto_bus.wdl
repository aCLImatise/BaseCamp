version 1.0

task KallistoBus {
  input {
    Boolean? verbose
    String? arguments
    String fast_q_files
  }
  command <<<
    kallisto bus \
      ~{arguments} \
      ~{fast_q_files} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    verbose: "Print out progress information every 1M proccessed reads"
    arguments: ""
    fast_q_files: ""
  }
}