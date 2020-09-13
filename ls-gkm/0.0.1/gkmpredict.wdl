version 1.0

task Gkmpredict {
  input {
    Int? set_level_msgs
    Int? set_number_default
    String test_seq_file
    String model_file
    String output_file
  }
  command <<<
    gkmpredict \
      ~{test_seq_file} \
      ~{model_file} \
      ~{output_file} \
      ~{if defined(set_level_msgs) then ("-v " +  '"' + set_level_msgs + '"') else ""} \
      ~{if defined(set_number_default) then ("-T " +  '"' + set_number_default + '"') else ""}
  >>>
  parameter_meta {
    set_level_msgs: "set the level of verbosity (default: 2)\\n0 -- error msgs only (ERROR)\\n1 -- warning msgs (WARN)\\n2 -- progress msgs at coarse-grained level (INFO)\\n3 -- progress msgs at fine-grained level (DEBUG)\\n4 -- progress msgs at finer-grained level (TRACE)"
    set_number_default: "set the number of threads for parallel calculation, 1, 4, or 16\\n(default: 1)\\n"
    test_seq_file: ""
    model_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}