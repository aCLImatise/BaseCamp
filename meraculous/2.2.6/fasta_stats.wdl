version 1.0

task FastaStats {
  input {
    Boolean bB
    Boolean gG
    Boolean lL
    Boolean nN
    Boolean nN
  }
  command <<<
    fasta_stats \
      ~{true="-b" false="" bB} \
      ~{true="-g" false="" gG} \
      ~{true="-l" false="" lL} \
      ~{true="-N" false="" nN} \
      ~{true="-n" false="" nN}
  >>>
}