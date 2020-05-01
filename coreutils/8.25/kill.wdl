version 1.0

task Kill {
  input {
    String signalSignal
    String listList
    String tableTable
  }
  command <<<
    kill \
      ~{if defined(signalSignal) then ("--signal " +  '"' + signalSignal + '"') else ""} \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{if defined(tableTable) then ("--table " +  '"' + tableTable + '"') else ""}
  >>>
}