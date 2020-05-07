version 1.0

task DownloadDfam.py {
  input {
    String outputOutput
  }
  command <<<
    download-dfam.py \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}