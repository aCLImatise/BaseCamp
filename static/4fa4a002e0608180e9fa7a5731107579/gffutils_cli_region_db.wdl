version 1.0

task GffutilsCliRegionDb {
  input {
    String? dbDb
    String? regionRegion
  }
  command <<<
    gffutils-cli region db \
      ~{dbDb} \
      ~{regionRegion}
  >>>
}