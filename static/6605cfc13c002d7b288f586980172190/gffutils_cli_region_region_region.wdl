version 1.0

task GffutilsCliRegionRegionRegion {
  input {
    String? dbDb
    String? regionRegion
  }
  command <<<
    gffutils-cli region region region \
      ~{dbDb} \
      ~{regionRegion}
  >>>
}