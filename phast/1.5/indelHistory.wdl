version 1.0

task IndelHistory {
  input {
    Boolean? output_alignment
    String? read_history
    Boolean? i_a_names
    String alignment_dot_fa
    String tree_dot_mod
  }
  command <<<
    indelHistory \
      ~{alignment_dot_fa} \
      ~{tree_dot_mod} \
      ~{true="--output-alignment" false="" output_alignment} \
      ~{if defined(read_history) then ("--read-history " +  '"' + read_history + '"') else ""} \
      ~{true="--ia-names" false="" i_a_names}
  >>>
  parameter_meta {
    output_alignment: "Instead of a summary of indels only, output an alignment in FASTA format of sequences for all ancestral and leaf nodes."
    read_history: "Read an indel history directly from the specified file.  Useful for debugging.  The alignment and tree arguments are not required; however in an alignment is given with --read-history and --output-alignment, then actual bases can be output for leaf species."
    i_a_names: "Assume ancestral sequences in alignment.fa are named according to the convention used by Mathieu Blanchette's inferAncestors program, e.g., \"RAT+MOUSE+RABBIT+\" for the last common ancestor of \"rat\", \"mouse\", and \"rabbit\"."
    alignment_dot_fa: ""
    tree_dot_mod: ""
  }
}