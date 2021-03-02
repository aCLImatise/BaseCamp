version 1.0

task PafToCARNACpy {
  input {
    File file_dot_paf
    String reads_dot_fast_a
  }
  command <<<
    paf_to_CARNAC_py \
      ~{file_dot_paf} \
      ~{reads_dot_fast_a}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_dot_paf: ""
    reads_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}