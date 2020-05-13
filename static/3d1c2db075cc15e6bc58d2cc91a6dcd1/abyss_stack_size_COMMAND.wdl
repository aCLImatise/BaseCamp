version 1.0

task AbyssStackSizeCOMMAND {
  input {
    String? stackStackSize
    String? commandCommand
  }
  command <<<
    abyss-stack-size COMMAND \
      ~{stackStackSize} \
      ~{commandCommand}
  >>>
}