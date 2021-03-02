version 1.0

task AlignRecordspy {
  command <<<
    AlignRecords_py
  >>>
  output {
    File out_stdout = stdout()
  }
}