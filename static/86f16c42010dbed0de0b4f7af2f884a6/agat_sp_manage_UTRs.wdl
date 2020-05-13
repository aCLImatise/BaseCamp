version 1.0

task AgatSpManageUTRs.pl {
  input {
    String bothBoth
    String plotPlot
    String outputOutput
    String aA
    String asAs
    String theThe
    String aA
    String anAn
  }
  command <<<
    agat_sp_manage_UTRs.pl \
      ~{if defined(bothBoth) then ("--both " +  '"' + bothBoth + '"') else ""} \
      ~{if defined(plotPlot) then ("--plot " +  '"' + plotPlot + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(asAs) then ("- as " +  '"' + asAs + '"') else ""} \
      ~{if defined(theThe) then ("- the " +  '"' + theThe + '"') else ""} \
      ~{if defined(aA) then ("- a " +  '"' + aA + '"') else ""} \
      ~{if defined(anAn) then ("- an " +  '"' + anAn + '"') else ""}
  >>>
}