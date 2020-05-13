version 1.0

task MbUpgradeTableOutputFile {
  input {
    String? tableTableFile
    String? outputOutputFile
  }
  command <<<
    mb-upgrade-table output_file \
      ~{tableTableFile} \
      ~{outputOutputFile}
  >>>
}