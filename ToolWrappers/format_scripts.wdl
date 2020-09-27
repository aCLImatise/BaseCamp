version 1.0

task FormatScripts {
  command <<<
    format_scripts
  >>>
  output {
    File out_stdout = stdout()
  }
}