version 1.0

task RemoveRegion {
  input {
    String regionRegionFile
    String refRef
  }
  command <<<
    remove_region \
      ~{if defined(regionRegionFile) then ("--region-file " +  '"' + regionRegionFile + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""}
  >>>
}