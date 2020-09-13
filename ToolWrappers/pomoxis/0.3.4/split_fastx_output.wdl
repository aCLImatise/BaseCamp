version 1.0

task SplitFastxOutput {
  input {
    String split_fast_x
    String var_input
    String var_output
    String chunksize
  }
  command <<<
    split_fastx output \
      ~{split_fast_x} \
      ~{var_input} \
      ~{var_output} \
      ~{chunksize}
  >>>
  parameter_meta {
    split_fast_x: ""
    var_input: ""
    var_output: ""
    chunksize: ""
  }
  output {
    File out_stdout = stdout()
  }
}