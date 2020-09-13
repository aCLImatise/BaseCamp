version 1.0

task MlstDownloadFunctionsjl {
  command <<<
    mlst_download_functions_jl
  >>>
  output {
    File out_stdout = stdout()
  }
}