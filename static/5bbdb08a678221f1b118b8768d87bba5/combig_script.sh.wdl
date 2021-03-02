version 1.0

task Combigscriptsh {
  command <<<
    combig_script_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}