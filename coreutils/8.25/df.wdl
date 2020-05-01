version 1.0

task Df {
  input {
    Boolean allAll
    Int blockBlockSize
    Boolean siSi
    String inodesInodes
    String blockBlockSize
    String localLocal
    String noNoSync
    Boolean outputOutput
    Boolean portabilityPortability
    Boolean syncSync
    Boolean totalTotal
    String typeType
    Boolean printPrintType
    String excludeExcludeType
    Boolean vV
  }
  command <<<
    df \
      ~{true="--all" false="" allAll} \
      ~{if defined(blockBlockSize) then ("--block-size " +  '"' + blockBlockSize + '"') else ""} \
      ~{true="--si" false="" siSi} \
      ~{if defined(inodesInodes) then ("--inodes " +  '"' + inodesInodes + '"') else ""} \
      ~{if defined(blockBlockSize) then ("--block-size " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(localLocal) then ("--local " +  '"' + localLocal + '"') else ""} \
      ~{if defined(noNoSync) then ("--no-sync " +  '"' + noNoSync + '"') else ""} \
      ~{true="--output" false="" outputOutput} \
      ~{true="--portability" false="" portabilityPortability} \
      ~{true="--sync" false="" syncSync} \
      ~{true="--total" false="" totalTotal} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{true="--print-type" false="" printPrintType} \
      ~{if defined(excludeExcludeType) then ("--exclude-type " +  '"' + excludeExcludeType + '"') else ""} \
      ~{true="-v" false="" vV}
  >>>
}