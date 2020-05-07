version 1.0

task RegtoolsCisAse {
  input {
    String? commandCommand
  }
  command <<<
    regtools cis-ase \
      ~{commandCommand}
  >>>
}