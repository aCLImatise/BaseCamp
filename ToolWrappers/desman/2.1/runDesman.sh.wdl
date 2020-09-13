version 1.0

task RunDesmansh {
  input {
    Boolean? help_tran_df_dot_csv
  }
  command <<<
    runDesman_sh \
      ~{if (help_tran_df_dot_csv) then "--helptran_df.csv" else ""}
  >>>
  parameter_meta {
    help_tran_df_dot_csv: ""
  }
  output {
    File out_stdout = stdout()
  }
}