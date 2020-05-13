version 1.0

task SplitScaffold {
  input {
    String? scaffoldScaffoldFa
  }
  command <<<
    split_scaffold \
      ~{scaffoldScaffoldFa}
  >>>
}