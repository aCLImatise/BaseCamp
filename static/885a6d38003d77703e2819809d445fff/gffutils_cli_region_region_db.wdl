version 1.0

task GffutilsCliRegionRegionDb {
  input {
    String? dbDb
    String? regionRegion
  }
  command <<<
    gffutils-cli region region db \
      ~{dbDb} \
      ~{regionRegion}
  >>>
}