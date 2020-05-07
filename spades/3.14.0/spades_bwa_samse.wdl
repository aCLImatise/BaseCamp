version 1.0

task SpadesBwaSamse {
  input {
    Int nN
    String fF
    String rR
    String? bwaBwa
    String? samSamSe
    String? prefixPrefix
    String? inInSai
    String? inInFq
  }
  command <<<
    spades-bwa samse \
      ~{bwaBwa} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{samSamSe} \
      ~{prefixPrefix} \
      ~{inInSai} \
      ~{inInFq}
  >>>
}