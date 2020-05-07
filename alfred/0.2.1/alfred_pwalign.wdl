version 1.0

task AlfredPwalign {
  input {
    Boolean gG
    Boolean eE
    Boolean mM
    Boolean nN
    Boolean pP
    Boolean qQ
    Boolean lL
    Boolean fF
    Boolean aA
    String? optionsOptions
    String? seq1fastaSeq1fasta
    String? seq2fastaSeq2fasta
  }
  command <<<
    alfred pwalign \
      ~{optionsOptions} \
      ~{true="-g" false="" gG} \
      ~{true="-e" false="" eE} \
      ~{true="-m" false="" mM} \
      ~{true="-n" false="" nN} \
      ~{true="-p" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-l" false="" lL} \
      ~{true="-f" false="" fF} \
      ~{true="-a" false="" aA} \
      ~{seq1fastaSeq1fasta} \
      ~{seq2fastaSeq2fasta}
  >>>
}