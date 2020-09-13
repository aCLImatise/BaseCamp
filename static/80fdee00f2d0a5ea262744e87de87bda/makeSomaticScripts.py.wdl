version 1.0

task MakeSomaticScriptspy {
  command <<<
    makeSomaticScripts_py
  >>>
  output {
    File out_stdout = stdout()
  }
}