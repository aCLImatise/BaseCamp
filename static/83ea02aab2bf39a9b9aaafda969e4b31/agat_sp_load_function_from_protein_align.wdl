version 1.0

task AgatSpLoadFunctionFromProteinAlign.pl {
  input {
    String methodMethod
    String thresholdThreshold
    Boolean wW
    Boolean pePe
    Boolean testTest
    Boolean spSp
    String priorityPriority
    Boolean vV
    Boolean oO
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_load_function_from_protein_align.pl \
      ~{if defined(methodMethod) then ("--method " +  '"' + methodMethod + '"') else ""} \
      ~{if defined(thresholdThreshold) then ("--threshold " +  '"' + thresholdThreshold + '"') else ""} \
      ~{true="-w" false="" wW} \
      ~{true="--pe" false="" pePe} \
      ~{true="--test" false="" testTest} \
      ~{true="--sp" false="" spSp} \
      ~{if defined(priorityPriority) then ("--priority " +  '"' + priorityPriority + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-o" false="" oO} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}