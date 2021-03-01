version 1.0

task _3FaSizepl {
  command <<<
    __3_fa_size_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}