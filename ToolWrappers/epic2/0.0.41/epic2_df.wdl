version 1.0

task Epic2df {
  command <<<
    epic2_df
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}