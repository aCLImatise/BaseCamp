version 1.0

task ExtractFastaSeq {
  input {
    String qQ
    String fF
    Boolean sS
    String s1S1
    String s2S2
    Boolean d1D1
    Boolean d2D2
    Boolean oO
    Boolean vV
    Boolean vV
    Boolean lazyLazy
  }
  command <<<
    extract_fasta_seq \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{true="-s" false="" sS} \
      ~{if defined(s1S1) then ("-s1 " +  '"' + s1S1 + '"') else ""} \
      ~{if defined(s2S2) then ("-s2 " +  '"' + s2S2 + '"') else ""} \
      ~{true="-d1" false="" d1D1} \
      ~{true="-d2" false="" d2D2} \
      ~{true="-o" false="" oO} \
      ~{true="-v" false="" vV} \
      ~{true="-V" false="" vV} \
      ~{true="--lazy" false="" lazyLazy}
  >>>
}