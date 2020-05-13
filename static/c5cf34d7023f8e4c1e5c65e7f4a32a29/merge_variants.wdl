version 1.0

task MergeVariants {
  input {
    String refRef
    String regionRegion
    String excludeExclude
    String inputInput
    Boolean murdockMurdock
    String noNo
  }
  command <<<
    merge_variants \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{true="--murdock" false="" murdockMurdock} \
      ~{if defined(noNo) then ("- No " +  '"' + noNo + '"') else ""}
  >>>
}