version 1.0

task Svist4getCopier {
  command <<<
    svist4get_copier
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}