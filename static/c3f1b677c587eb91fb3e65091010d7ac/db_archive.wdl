version 1.0

task DbArchive {
  input {
    Boolean adlsAdlsVv
    String hH
    String pP
  }
  command <<<
    db_archive \
      ~{true="-adlsVv" false="" adlsAdlsVv} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(pP) then ("-P " +  '"' + pP + '"') else ""}
  >>>
}