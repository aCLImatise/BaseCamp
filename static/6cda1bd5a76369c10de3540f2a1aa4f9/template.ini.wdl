version 1.0

task Templateini {
  command <<<
    template_ini
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}