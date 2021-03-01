version 1.0

task SICERdfrbsh {
  command <<<
    SICER_df_rb_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}