version 1.0

task FathomCommands {
  input {
    String? annAnn
    String? dnaDna
    String? commandsCommands
  }
  command <<<
    fathom commands \
      ~{annAnn} \
      ~{dnaDna} \
      ~{commandsCommands}
  >>>
}