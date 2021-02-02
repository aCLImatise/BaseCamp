version 1.0

task Licensetxt {
  command <<<
    license_txt
  >>>
  output {
    File out_stdout = stdout()
  }
}