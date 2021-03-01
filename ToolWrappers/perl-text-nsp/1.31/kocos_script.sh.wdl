version 1.0

task Kocosscriptsh {
  command <<<
    kocos_script_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}