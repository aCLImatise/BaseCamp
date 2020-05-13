version 1.0

task Xcmp {
  input {
    String inputInputVCfs
    Boolean oO
    Boolean eE
    Boolean rR
    Boolean lL
    Boolean rR
    Boolean tT
    Boolean qQ
    String progressProgress
    String progressProgressSeconds
    Boolean wW
    Boolean nN
    String expandExpandHapBlocks
    String limitLimit
    String applyApplyFiltersTruth
    Boolean fF
    String alwaysAlwaysHapCmp
    String noNoHapCmp
  }
  command <<<
    xcmp \
      ~{if defined(inputInputVCfs) then ("--input-vcfs " +  '"' + inputInputVCfs + '"') else ""} \
      ~{true="-o" false="" oO} \
      ~{true="-e" false="" eE} \
      ~{true="-r" false="" rR} \
      ~{true="-l" false="" lL} \
      ~{true="-R" false="" rR} \
      ~{true="-T" false="" tT} \
      ~{true="-q" false="" qQ} \
      ~{if defined(progressProgress) then ("--progress " +  '"' + progressProgress + '"') else ""} \
      ~{if defined(progressProgressSeconds) then ("--progress-seconds " +  '"' + progressProgressSeconds + '"') else ""} \
      ~{true="-w" false="" wW} \
      ~{true="-n" false="" nN} \
      ~{if defined(expandExpandHapBlocks) then ("--expand-hapblocks " +  '"' + expandExpandHapBlocks + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(applyApplyFiltersTruth) then ("--apply-filters-truth " +  '"' + applyApplyFiltersTruth + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{if defined(alwaysAlwaysHapCmp) then ("--always-hapcmp " +  '"' + alwaysAlwaysHapCmp + '"') else ""} \
      ~{if defined(noNoHapCmp) then ("--no-hapcmp " +  '"' + noNoHapCmp + '"') else ""}
  >>>
}