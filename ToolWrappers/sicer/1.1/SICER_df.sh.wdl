version 1.0

task SICERdfsh {
  command <<<
    SICER_df_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}