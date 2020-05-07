version 1.0

task FathomAnn {
  input {
    String? dnaDna
    String? commandsCommands
  }
  command <<<
    fathom ann \
      ~{dnaDna} \
      ~{commandsCommands}
  >>>
}