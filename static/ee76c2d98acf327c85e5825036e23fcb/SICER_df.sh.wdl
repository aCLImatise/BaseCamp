version 1.0

task SICERdfsh {
  command <<<
    SICER_df_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}