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
  runtime {
    docker: "quay.io/biocontainers/hyphy:2.5.28--h3db2f75_0"
  }
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