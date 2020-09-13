version 1.0

task SerobaCreateDBsOutDir {
  input {
    String se_rob_a
    String created_bs
    String database_dir
    Int km_er_size
  }
  command <<<
    seroba createDBs out_dir \
      ~{se_rob_a} \
      ~{created_bs} \
      ~{database_dir} \
      ~{km_er_size}
  >>>
  parameter_meta {
    se_rob_a: ""
    created_bs: ""
    database_dir: ""
    km_er_size: ""
  }
  output {
    File out_stdout = stdout()
  }
}