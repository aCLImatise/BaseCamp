version 1.0

task GffutilsCliCommonDb {
  input {
    String? dbDb
  }
  command <<<
    gffutils-cli common db \
      ~{dbDb}
  >>>
}