version 1.0

task ExtractScaffold {
  input {
    String theThe
    String theThe
    String theThe
    String listList
    String theThe
    String theThe
    String theThe
    String listList
  }
  command <<<
    extractScaffold \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(listList) then ("- list " +  '"' + listList + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(theThe) then ("- The " +  '"' + theThe + '"') else ""} \
      ~{if defined(listList) then ("- list " +  '"' + listList + '"') else ""}
  >>>
}