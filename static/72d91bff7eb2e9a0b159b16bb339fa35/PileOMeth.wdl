version 1.0

task PileOMeth {
  input {
    String? commandCommand
  }
  command <<<
    PileOMeth \
      ~{commandCommand}
  >>>
}