version 1.0

task SmofTail {
  input {
    String entriesEntries
    String firstFirst
    String lastLast
    String? kK
    String? inputInput
  }
  command <<<
    smof tail \
      ~{kK} \
      ~{if defined(entriesEntries) then ("--entries " +  '"' + entriesEntries + '"') else ""} \
      ~{if defined(firstFirst) then ("--first " +  '"' + firstFirst + '"') else ""} \
      ~{if defined(lastLast) then ("--last " +  '"' + lastLast + '"') else ""} \
      ~{inputInput}
  >>>
}