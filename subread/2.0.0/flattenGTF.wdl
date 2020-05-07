version 1.0

task FlattenGTF {
  input {
    File aA
    File oO
    String tT
    String gG
    Boolean cC
  }
  command <<<
    flattenGTF \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-C" false="" cC}
  >>>
}