version 1.0

task PafToCARNAC.py {
  input {
    File file_dot_paf
    String reads_dot_fast_a_slash_q
  }
  command <<<
    paf_to_CARNAC.py \
      ~{file_dot_paf} \
      ~{reads_dot_fast_a_slash_q}
  >>>
  parameter_meta {
    file_dot_paf: ""
    reads_dot_fast_a_slash_q: ""
  }
}