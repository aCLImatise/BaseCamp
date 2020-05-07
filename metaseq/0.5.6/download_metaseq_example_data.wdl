version 1.0

task DownloadMetaseqExampleData.py {
  input {
    String dataDataDir
  }
  command <<<
    download_metaseq_example_data.py \
      ~{if defined(dataDataDir) then ("--data-dir " +  '"' + dataDataDir + '"') else ""}
  >>>
}