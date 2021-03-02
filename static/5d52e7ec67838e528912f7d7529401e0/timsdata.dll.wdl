version 1.0

task Timsdatadll {
  command <<<
    timsdata_dll
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}