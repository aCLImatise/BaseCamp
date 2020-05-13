version 1.0

task Cyvcf2 {
  input {
    String chromChrom
    Int startStart
    Int endEnd
    String includeInclude
    String excludeExclude
    Boolean loglevelLoglevel
    Boolean silentSilent
  }
  command <<<
    cyvcf2 \
      ~{if defined(chromChrom) then ("--chrom " +  '"' + chromChrom + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="--loglevel" false="" loglevelLoglevel} \
      ~{true="--silent" false="" silentSilent}
  >>>
}