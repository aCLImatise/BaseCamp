version 1.0

task BwaSamse {
  input {
    Int nN
    String fF
    String rR
    String? prefixPrefix
    String? inInSai
    String? inInFq
  }
  command <<<
    bwa samse \
      ~{prefixPrefix} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{inInSai} \
      ~{inInFq}
  >>>
}