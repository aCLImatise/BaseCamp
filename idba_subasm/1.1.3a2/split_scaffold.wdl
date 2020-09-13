version 1.0

task SplitScaffold {
  input {
    String scaffold_dot_fa
  }
  command <<<
    split_scaffold \
      ~{scaffold_dot_fa}
  >>>
  parameter_meta {
    scaffold_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}