version 1.0

task AbyssStackSizeSTACKSIZE {
  input {
    String? commandCommand
  }
  command <<<
    abyss-stack-size STACK_SIZE \
      ~{commandCommand}
  >>>
}