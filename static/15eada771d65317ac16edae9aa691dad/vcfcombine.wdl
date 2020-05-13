version 1.0

task Vcfcombine {
  input {
    String regionRegion
  }
  command <<<
    vcfcombine \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""}
  >>>
}