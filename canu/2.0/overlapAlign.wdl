version 1.0

task OverlapAlign {
  input {
    String sS
    String oO
    String rR
    String applyApply
    String erateErate
    Boolean partialPartial
    String memoryMemory
    String threadsThreads
    Boolean vtVt
  }
  command <<<
    overlapAlign \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(applyApply) then ("-apply " +  '"' + applyApply + '"') else ""} \
      ~{if defined(erateErate) then ("-erate " +  '"' + erateErate + '"') else ""} \
      ~{true="-partial" false="" partialPartial} \
      ~{if defined(memoryMemory) then ("-memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(threadsThreads) then ("-threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="-Vt" false="" vtVt}
  >>>
}