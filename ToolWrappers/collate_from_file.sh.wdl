version 1.0

task CollateFromFilesh {
  command <<<
    collate_from_file_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}