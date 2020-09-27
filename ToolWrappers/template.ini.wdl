version 1.0

task Templateini {
  command <<<
    template_ini
  >>>
  output {
    File out_stdout = stdout()
  }
}