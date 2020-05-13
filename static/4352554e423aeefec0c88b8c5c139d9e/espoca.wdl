version 1.0

task Espoca {
  input {
    String? speciesSpecies
    String? alnAlnFile
    String? treeTreeFile
  }
  command <<<
    espoca \
      ~{speciesSpecies} \
      ~{alnAlnFile} \
      ~{treeTreeFile}
  >>>
}