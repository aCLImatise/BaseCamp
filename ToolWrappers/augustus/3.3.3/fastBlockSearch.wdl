version 1.0

task FastBlockSearch {
  input {
    String fast_blocks_search
    String seqs_dot_fa
    String fam_dot_pr_fl
  }
  command <<<
    fastBlockSearch \
      ~{fast_blocks_search} \
      ~{seqs_dot_fa} \
      ~{fam_dot_pr_fl}
  >>>
  parameter_meta {
    fast_blocks_search: ""
    seqs_dot_fa: ""
    fam_dot_pr_fl: ""
  }
  output {
    File out_stdout = stdout()
  }
}