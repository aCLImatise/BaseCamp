version 1.0

task MsslookupProteingroup {
  input {
    String iI
    String dbfileDbfile
  }
  command <<<
    msslookup proteingroup \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""}
  >>>
}