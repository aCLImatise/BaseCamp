version 1.0

task Rankscriptsh {
  command <<<
    rank_script_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}