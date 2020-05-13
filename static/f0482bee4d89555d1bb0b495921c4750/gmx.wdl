version 1.0

task Gmx {
  input {
    String? commandsCommands
    String? selectionsSelections
  }
  command <<<
    gmx \
      ~{commandsCommands} \
      ~{selectionsSelections}
  >>>
}