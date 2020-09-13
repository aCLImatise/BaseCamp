version 1.0

task ExtractVba {
  command <<<
    extract_vba
  >>>
  output {
    File out_stdout = stdout()
  }
}