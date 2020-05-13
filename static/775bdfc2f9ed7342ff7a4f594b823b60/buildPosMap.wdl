version 1.0

task BuildPosMap {
  input {
    String oO
    String iI
    String gG
    Boolean uU
  }
  command <<<
    buildPosMap \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-U" false="" uU}
  >>>
}