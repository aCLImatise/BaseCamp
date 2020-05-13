version 1.0

task TreeDoctor {
  input {
    Boolean newickNewick
  }
  command <<<
    tree_doctor \
      ~{true="--newick" false="" newickNewick}
  >>>
}