version 1.0

task Manualcompilesh {
  command <<<
    manualcompile_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}