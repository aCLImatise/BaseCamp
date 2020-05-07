version 1.0

task GffutilsCliFetchDb {
  input {
    String? dbDb
    String? idsIds
  }
  command <<<
    gffutils-cli fetch db \
      ~{dbDb} \
      ~{idsIds}
  >>>
}