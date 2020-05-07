version 1.0

task MsslookupSpectra {
  input {
    Array[String]+ iI
    String dbfileDbfile
    Array[String]+ setSetNames
  }
  command <<<
    msslookup spectra \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{if defined(setSetNames) then ("--setnames " +  '"' + setSetNames + '"') else ""}
  >>>
}