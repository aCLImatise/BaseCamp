version 1.0

task GffutilsCliFetchIdsIds {
  input {
    String? dbDb
    String? idsIds
  }
  command <<<
    gffutils-cli fetch ids ids \
      ~{dbDb} \
      ~{idsIds}
  >>>
}