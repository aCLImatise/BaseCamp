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
  runtime {
    docker: "quay.io/biocontainers/seroba:1.0.2--py_0"
  }
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