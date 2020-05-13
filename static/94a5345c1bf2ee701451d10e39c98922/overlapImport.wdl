version 1.0

task OverlapImport {
  input {
    String sS
    File oO
    String oO
    Boolean coordsCoords
    Boolean hangsHangs
    Boolean unalignedUnaligned
    Boolean pafPaf
    Boolean rawRaw
    Boolean obtObt
    Boolean utgUtg
    String randomRandom
    String aA
    String bB
  }
  command <<<
    overlapImport \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{true="-coords" false="" coordsCoords} \
      ~{true="-hangs" false="" hangsHangs} \
      ~{true="-unaligned" false="" unalignedUnaligned} \
      ~{true="-paf" false="" pafPaf} \
      ~{true="-raw" false="" rawRaw} \
      ~{true="-obt" false="" obtObt} \
      ~{true="-utg" false="" utgUtg} \
      ~{if defined(randomRandom) then ("-random " +  '"' + randomRandom + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""}
  >>>
}