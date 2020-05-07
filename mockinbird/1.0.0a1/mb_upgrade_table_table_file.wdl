version 1.0

task MbUpgradeTableTableFile {
  input {
    String? outputOutputFile
  }
  command <<<
    mb-upgrade-table table_file \
      ~{outputOutputFile}
  >>>
}