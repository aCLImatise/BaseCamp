version 1.0

task MsslookupProtspace {
  input {
    String iI
    String dbfileDbfile
    Int minMinLen
  }
  command <<<
    msslookup protspace \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{if defined(minMinLen) then ("--minlen " +  '"' + minMinLen + '"') else ""}
  >>>
}