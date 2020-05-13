version 1.0

task SetHaploidRegion {
  input {
    String regionRegionFile
    String refRef
  }
  command <<<
    set_haploid_region \
      ~{if defined(regionRegionFile) then ("--region-file " +  '"' + regionRegionFile + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""}
  >>>
}