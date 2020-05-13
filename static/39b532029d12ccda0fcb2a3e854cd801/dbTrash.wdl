version 1.0

task DbTrash {
  input {
    String numberNumber
    String actuallyActually
    String dropDropLimit
    String defaultDefault
    String specifySpecify
    String historyHistoryToo
    String defaultDefault
    String thisThis
    Boolean extExtFile
    Boolean extExtDel
    Boolean topdirTopdir
    Boolean tableTableStatus
    String delDelLostTable
    String thisThis
    String ifIf
    String verboseVerbose
  }
  command <<<
    dbTrash \
      ~{if defined(numberNumber) then ("- number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(actuallyActually) then ("- actually " +  '"' + actuallyActually + '"') else ""} \
      ~{if defined(dropDropLimit) then ("-dropLimit " +  '"' + dropDropLimit + '"') else ""} \
      ~{if defined(defaultDefault) then ("- default " +  '"' + defaultDefault + '"') else ""} \
      ~{if defined(specifySpecify) then ("- Specify " +  '"' + specifySpecify + '"') else ""} \
      ~{if defined(historyHistoryToo) then ("-historyToo " +  '"' + historyHistoryToo + '"') else ""} \
      ~{if defined(defaultDefault) then ("- default " +  '"' + defaultDefault + '"') else ""} \
      ~{if defined(thisThis) then ("- this " +  '"' + thisThis + '"') else ""} \
      ~{true="-extFile" false="" extExtFile} \
      ~{true="-extDel" false="" extExtDel} \
      ~{true="-topDir" false="" topdirTopdir} \
      ~{true="-tableStatus" false="" tableTableStatus} \
      ~{if defined(delDelLostTable) then ("-delLostTable " +  '"' + delDelLostTable + '"') else ""} \
      ~{if defined(thisThis) then ("- this " +  '"' + thisThis + '"') else ""} \
      ~{if defined(ifIf) then ("- if " +  '"' + ifIf + '"') else ""} \
      ~{if defined(verboseVerbose) then ("-verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}