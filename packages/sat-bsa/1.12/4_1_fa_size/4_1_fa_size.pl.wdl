version 1.0

task _1FaSizepl {
  command <<<
    __1_fa_size_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}