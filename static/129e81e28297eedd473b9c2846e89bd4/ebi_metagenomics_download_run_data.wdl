version 1.0

task EbiMetagenomicsDownloadRunData {
  input {
    String runRun
    String dataData
    File fileFile
  }
  command <<<
    ebi_metagenomics download_run_data \
      ~{if defined(runRun) then ("--run " +  '"' + runRun + '"') else ""} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""}
  >>>
}