version 1.0

task FathomDna {
  input {
    String? annAnn
    String? dnaDna
    String? commandsCommands
  }
  command <<<
    fathom dna \
      ~{annAnn} \
      ~{dnaDna} \
      ~{commandsCommands}
  >>>
}