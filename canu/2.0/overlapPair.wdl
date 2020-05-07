version 1.0

task OverlapPair {
  input {
    String sS
    String erateErate
    Boolean partialPartial
    String memoryMemory
    String tT
    Boolean invertInvert
  }
  command <<<
    overlapPair \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(erateErate) then ("-erate " +  '"' + erateErate + '"') else ""} \
      ~{true="-partial" false="" partialPartial} \
      ~{if defined(memoryMemory) then ("-memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-invert" false="" invertInvert}
  >>>
}