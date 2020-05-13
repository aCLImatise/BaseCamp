version 1.0

task MsslookupIsoquant {
  input {
    Array[String]+ iI
    String dbfileDbfile
    Array[String]+ spectraSpectra
  }
  command <<<
    msslookup isoquant \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dbfileDbfile) then ("--dbfile " +  '"' + dbfileDbfile + '"') else ""} \
      ~{if defined(spectraSpectra) then ("--spectra " +  '"' + spectraSpectra + '"') else ""}
  >>>
}