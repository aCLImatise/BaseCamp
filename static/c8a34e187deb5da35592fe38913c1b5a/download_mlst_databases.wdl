version 1.0

task DownloadMlstDatabases {
  input {
    String cC
    String bB
    Boolean vV
  }
  command <<<
    download_mlst_databases \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}