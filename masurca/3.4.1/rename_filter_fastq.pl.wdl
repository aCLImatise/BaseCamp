version 1.0

task RenameFilterFastqpl {
  command <<<
    rename_filter_fastq_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}