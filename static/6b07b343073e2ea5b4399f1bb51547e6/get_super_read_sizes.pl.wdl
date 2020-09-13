version 1.0

task GetSuperReadSizespl {
  command <<<
    get_super_read_sizes_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}