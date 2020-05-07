version 1.0

task Cyvcf2 {
  input {
    String chromChrom
    Int startStart
    Int endEnd
    String includeInclude
    String excludeExclude
    String individualIndividual
    Boolean noNoInds
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
      ~{if defined(individualIndividual) then ("--individual " +  '"' + individualIndividual + '"') else ""} \
      ~{true="--no-inds" false="" noNoInds} \
      ~{true="--loglevel" false="" loglevelLoglevel} \
      ~{true="--silent" false="" silentSilent}
  >>>
}