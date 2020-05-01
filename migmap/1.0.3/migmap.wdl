version 1.0

task Migmap {
  input {
    Int nN
    Int pP
    Boolean qQ
    Boolean rR
    String sS
    Boolean unmappedUnmapped
    Boolean useUseKabat
  }
  command <<<
    migmap \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(pP) then ("-p " +  '"' + pP + '"') else ""} \
      ~{true="-q" false="" qQ} \
      ~{true="-R" false="" rR} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{true="--unmapped" false="" unmappedUnmapped} \
      ~{true="--use-kabat" false="" useUseKabat}
  >>>
}