version 1.0

task PLEKGenerateScriptsR {
  command <<<
    PLEK_generate_scripts_R
  >>>
  output {
    File out_stdout = stdout()
  }
}