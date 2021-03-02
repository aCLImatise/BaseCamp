version 1.0

task RsemPerlUtilspm {
  command <<<
    rsem_perl_utils_pm
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}