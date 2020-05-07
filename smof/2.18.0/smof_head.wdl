version 1.0

task SmofHead {
  input {
    String entriesEntries
    String firstFirst
    String lastLast
    String? kK
    String? inputInput
  }
  command <<<
    smof head \
      ~{kK} \
      ~{if defined(entriesEntries) then ("--entries " +  '"' + entriesEntries + '"') else ""} \
      ~{if defined(firstFirst) then ("--first " +  '"' + firstFirst + '"') else ""} \
      ~{if defined(lastLast) then ("--last " +  '"' + lastLast + '"') else ""} \
      ~{inputInput}
  >>>
}