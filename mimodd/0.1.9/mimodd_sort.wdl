version 1.0

task MimoddSort {
  input {
    String ofileOfile
    String iIFormat
    String oOFormat
    Boolean byByName
    String lL
    String memoryMemory
    String threadsThreads
    String? inputInputFile
  }
  command <<<
    mimodd sort \
      ~{inputInputFile} \
      ~{if defined(ofileOfile) then ("--ofile " +  '"' + ofileOfile + '"') else ""} \
      ~{if defined(iIFormat) then ("--iformat " +  '"' + iIFormat + '"') else ""} \
      ~{if defined(oOFormat) then ("--oformat " +  '"' + oOFormat + '"') else ""} \
      ~{true="--by-name" false="" byByName} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(memoryMemory) then ("--memory " +  '"' + memoryMemory + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}