version 1.0

task MsspercolatorSplittd {
  input {
    String iI
    String dD
  }
  command <<<
    msspercolator splittd \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""}
  >>>
}