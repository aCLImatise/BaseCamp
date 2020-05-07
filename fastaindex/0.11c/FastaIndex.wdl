version 1.0

task FastaIndex {
  input {
    Boolean verboseVerbose
    String fastFastA
    String outOut
    Boolean rR
    String nN
    String lL
    Boolean statsStats
  }
  command <<<
    FastaIndex \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="-r" false="" rR} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{if defined(lL) then ("-L " +  '"' + lL + '"') else ""} \
      ~{true="--stats" false="" statsStats}
  >>>
}