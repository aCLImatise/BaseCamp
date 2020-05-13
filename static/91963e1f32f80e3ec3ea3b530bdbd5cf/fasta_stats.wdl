version 1.0

task FastaStats {
  input {
    Boolean verboseVerbose
    Array[String]+ fastFastA
    String outOut
  }
  command <<<
    fasta_stats \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}