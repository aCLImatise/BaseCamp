version 1.0

task GetSuperReadPlacements.perl {
  input {
    String dirDir
    Boolean minaMinaStat
    Boolean minMinFromEnd
    Boolean shortestShortestUnitIgLength
    Boolean superSuperReaddir
    Boolean caCaDir
    String hH
  }
  command <<<
    getSuperReadPlacements.perl \
      ~{if defined(dirDir) then ("-dir " +  '"' + dirDir + '"') else ""} \
      ~{true="-minAStat" false="" minaMinaStat} \
      ~{true="-minFromEnd" false="" minMinFromEnd} \
      ~{true="-shortestUnitigLength" false="" shortestShortestUnitIgLength} \
      ~{true="-superReadDir" false="" superSuperReaddir} \
      ~{true="-CADir" false="" caCaDir} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""}
  >>>
}