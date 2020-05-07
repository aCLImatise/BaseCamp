version 1.0

task BreakBlocks {
  input {
    String regionRegionFile
    String refRef
    Boolean excludeExcludeOffTarget
    Boolean includeIncludeVariants
  }
  command <<<
    break_blocks \
      ~{if defined(regionRegionFile) then ("--region-file " +  '"' + regionRegionFile + '"') else ""} \
      ~{if defined(refRef) then ("--ref " +  '"' + refRef + '"') else ""} \
      ~{true="--exclude-off-target" false="" excludeExcludeOffTarget} \
      ~{true="--include-variants" false="" includeIncludeVariants}
  >>>
}