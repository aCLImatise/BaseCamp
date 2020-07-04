version 1.0

task Gkmpredict {
  input {
    String? set_level_verbosity
    String test_seq_file
    String model_file
    String output_file
  }
  command <<<
    gkmpredict \
      ~{test_seq_file} \
      ~{model_file} \
      ~{output_file} \
      ~{if defined(set_level_verbosity) then ("-v " +  '"' + set_level_verbosity + '"') else ""}
  >>>
  parameter_meta {
    set_level_verbosity: "set the level of verbosity (default: 2) 0 -- error msgs only (ERROR) 1 -- warning msgs (WARN) 2 -- progress msgs at coarse-grained level (INFO) 3 -- progress msgs at fine-grained level (DEBUG) 4 -- progress msgs at finer-grained level (TRACE)"
    test_seq_file: ""
    model_file: ""
    output_file: ""
  }
}