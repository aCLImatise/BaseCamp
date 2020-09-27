version 1.0

task HyphyMt {
  input {
    String i
    String branch_under_condition
    String fprintfstdout
    String return
  }
  command <<<
    hyphy mt \
      ~{i} \
      ~{branch_under_condition} \
      ~{fprintfstdout} \
      ~{return}
  >>>
  parameter_meta {
    i: "i=0;"
    branch_under_condition: "Branch under condition 'echoFlag'"
    fprintfstdout: "fprintf(stdout, \\\"\\n|------------|-------|-----------|------------|\\\");"
    return: "return 0;"
  }
  output {
    File out_stdout = stdout()
  }
}