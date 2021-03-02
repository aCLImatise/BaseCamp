version 1.0

task _1MakeScriptpl {
  command <<<
    __1_make_script_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/sat-bsa:1.12--0"
  }
  output {
    File out_stdout = stdout()
  }
}