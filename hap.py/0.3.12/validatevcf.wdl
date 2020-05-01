version 1.0

task Validatevcf {
  input {
    String inputInputVcf
    Boolean eE
    Boolean rR
    Boolean lL
    Boolean rR
    Boolean tT
    String progressProgress
    String progressProgressSeconds
    Boolean wW
    Boolean nN
    String expandExpandHapBlocks
    String limitLimit
    String applyApplyFilters
  }
  command <<<
    validatevcf \
      ~{if defined(inputInputVcf) then ("--input-vcf " +  '"' + inputInputVcf + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{true="-r" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{true="-R" false="" rR} \
      ~{true="-T" false="" tT} \
      ~{if defined(progressProgress) then ("--progress " +  '"' + progressProgress + '"') else ""} \
      ~{if defined(progressProgressSeconds) then ("--progress-seconds " +  '"' + progressProgressSeconds + '"') else ""} \
      ~{true="-w" false="" wW} \
      ~{true="-n" false="" nN} \
      ~{if defined(expandExpandHapBlocks) then ("--expand-hapblocks " +  '"' + expandExpandHapBlocks + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(applyApplyFilters) then ("--apply-filters " +  '"' + applyApplyFilters + '"') else ""}
  >>>
}