version 1.0

task MsslookupBiosets {
  input {
    String iI
    Array[String]+ setSetNames
  }
  command <<<
    msslookup biosets \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(setSetNames) then ("--setnames " +  '"' + setSetNames + '"') else ""}
  >>>
}