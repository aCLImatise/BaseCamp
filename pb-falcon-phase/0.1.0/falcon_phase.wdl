version 1.0

task FalconPhase {
  input {
    String? commandCommand
  }
  command <<<
    falcon-phase \
      ~{commandCommand}
  >>>
}