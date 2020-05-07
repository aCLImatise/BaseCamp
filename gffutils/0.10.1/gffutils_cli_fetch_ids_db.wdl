version 1.0

task GffutilsCliFetchIdsDb {
  input {
    String? dbDb
    String? idsIds
  }
  command <<<
    gffutils-cli fetch ids db \
      ~{dbDb} \
      ~{idsIds}
  >>>
}