version 1.0

task SICERdfrbsh {
  command <<<
    SICER_df_rb_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}