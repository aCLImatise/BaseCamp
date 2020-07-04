version 1.0

task HYPHYMPIMt {
  input {
    String i
    String branch_under_condition
    String fprintfstdout
    String return
  }
  command <<<
    HYPHYMPI mt \
      ~{i} \
      ~{branch_under_condition} \
      ~{fprintfstdout} \
      ~{return}
  >>>
  parameter_meta {
    i: "i=0;"
    branch_under_condition: "Branch under condition 'echoFlag'"
    fprintfstdout: "fprintf(stdout, \"\n|------------|-------|-----------|------------|\");"
    return: "return 0;"
  }
}