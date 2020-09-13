version 1.0

task Mafswap {
  input {
    Int? move_nth_sequence
    String my_alignments_dot_maf
  }
  command <<<
    maf_swap \
      ~{my_alignments_dot_maf} \
      ~{if defined(move_nth_sequence) then ("-n " +  '"' + move_nth_sequence + '"') else ""}
  >>>
  parameter_meta {
    move_nth_sequence: "move the Nth sequence to the top (default: 2)"
    my_alignments_dot_maf: ""
  }
  output {
    File out_stdout = stdout()
  }
}