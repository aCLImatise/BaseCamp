version 1.0

task Ganonconvertdb0102py {
  command <<<
    ganon_convert_db_0_1_0_2_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0"
  }
  output {
    File out_stdout = stdout()
  }
}