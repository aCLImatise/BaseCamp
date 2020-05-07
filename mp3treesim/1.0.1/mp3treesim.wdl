version 1.0

task Mp3treesim {
  input {
    Boolean iI
    Boolean uU
    Boolean gG
    String? treeTree
  }
  command <<<
    mp3treesim \
      ~{treeTree} \
      ~{true="-i" false="" iI} \
      ~{true="-u" false="" uU} \
      ~{true="-g" false="" gG}
  >>>
}