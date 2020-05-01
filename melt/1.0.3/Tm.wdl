version 1.0

task Tm {
  input {
    Boolean uncorrectedUncorrected
    String dnaDna
    String naNa
    String mgMg
    String dntpDntp
    String? seqSeq
  }
  command <<<
    Tm \
      ~{seqSeq} \
      ~{true="--uncorrected" false="" uncorrectedUncorrected} \
      ~{if defined(dnaDna) then ("--dna " +  '"' + dnaDna + '"') else ""} \
      ~{if defined(naNa) then ("--na " +  '"' + naNa + '"') else ""} \
      ~{if defined(mgMg) then ("--mg " +  '"' + mgMg + '"') else ""} \
      ~{if defined(dntpDntp) then ("--dntp " +  '"' + dntpDntp + '"') else ""}
  >>>
}