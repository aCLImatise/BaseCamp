version 1.0

task TreeDoctor {
  input {
    Boolean? newick
    File file_dot_mod
  }
  command <<<
    tree_doctor \
      ~{file_dot_mod} \
      ~{true="--newick" false="" newick}
  >>>
  parameter_meta {
    newick: "The input file is in Newick format (necessary if file name does not end in .nh)"
    file_dot_mod: ""
  }
}