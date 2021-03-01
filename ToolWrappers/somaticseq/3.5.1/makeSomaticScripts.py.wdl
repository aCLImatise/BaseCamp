version 1.0

task MakeSomaticScriptspy {
  command <<<
    makeSomaticScripts_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}