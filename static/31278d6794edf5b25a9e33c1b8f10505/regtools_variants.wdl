version 1.0

task RegtoolsVariants {
  input {
    String? commandCommand
  }
  command <<<
    regtools variants \
      ~{commandCommand}
  >>>
}