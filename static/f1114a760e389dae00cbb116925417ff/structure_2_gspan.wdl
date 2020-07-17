version 1.0

task Structure2Gspan.pl {
  input {
    Boolean? tmp
    Boolean? o
  }
  command <<<
    structure_2_gspan.pl \
      ~{true="-tmp" false="" tmp} \
      ~{true="-o" false="" o}
  >>>
  parameter_meta {
    tmp: "\"/var/tmp/fasta2shrep\""
    o: "\"CURRENT_DIR/GSPAN_Outputs/\""
  }
}