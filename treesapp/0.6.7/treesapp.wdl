version 1.0

task Treesapp {
  input {
    String? commandCommand
  }
  command <<<
    treesapp \
      ~{commandCommand}
  >>>
}