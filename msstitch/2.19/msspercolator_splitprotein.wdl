version 1.0

task MsspercolatorSplitprotein {
  input {
    String iI
    String dD
    Array[String]+ protProtHeaders
  }
  command <<<
    msspercolator splitprotein \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(protProtHeaders) then ("--protheaders " +  '"' + protProtHeaders + '"') else ""}
  >>>
}