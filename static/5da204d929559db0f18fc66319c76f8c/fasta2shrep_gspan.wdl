version 1.0

task Fasta2shrepGspan.pl {
  input {
    Boolean? _selects_shreps
    Boolean? tmp
    Boolean? o
  }
  command <<<
    fasta2shrep_gspan.pl \
      ~{true="-M" false="" _selects_shreps} \
      ~{true="-tmp" false="" tmp} \
      ~{true="-o" false="" o}
  >>>
  parameter_meta {
    _selects_shreps: "0 # selects all shreps"
    tmp: "\"/var/tmp/fasta2shrep\""
    o: "\"CURRENT_DIR/GSPAN_Outputs/\""
  }
}