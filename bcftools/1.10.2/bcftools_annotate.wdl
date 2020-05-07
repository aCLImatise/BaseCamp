version 1.0

task BcftoolsAnnotate {
  input {
    File annotationsAnnotations
    String collapseCollapse
    String columnsColumns
    String excludeExclude
    Boolean forceForce
    File headerHeaderLines
    Boolean setSetId
    String includeInclude
    Boolean keepKeepSites
    Boolean mergeMergeLogic
    Boolean markMarkSites
    Boolean noNoVersion
    File outputOutput
    Boolean outputOutputType
    String regionsRegions
    File regionsRegionsFile
    File renameRenameChrs
    Boolean samplesSamples
    Boolean samplesSamplesFile
    Boolean singleSingleOverlaps
    String removeRemove
    Int threadsThreads
    String? inInVcfGz
  }
  command <<<
    bcftools annotate \
      ~{inInVcfGz} \
      ~{if defined(annotationsAnnotations) then ("--annotations " +  '"' + annotationsAnnotations + '"') else ""} \
      ~{if defined(collapseCollapse) then ("--collapse " +  '"' + collapseCollapse + '"') else ""} \
      ~{if defined(columnsColumns) then ("--columns " +  '"' + columnsColumns + '"') else ""} \
      ~{if defined(excludeExclude) then ("--exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(headerHeaderLines) then ("--header-lines " +  '"' + headerHeaderLines + '"') else ""} \
      ~{true="--set-id" false="" setSetId} \
      ~{if defined(includeInclude) then ("--include " +  '"' + includeInclude + '"') else ""} \
      ~{true="--keep-sites" false="" keepKeepSites} \
      ~{true="--merge-logic" false="" mergeMergeLogic} \
      ~{true="--mark-sites" false="" markMarkSites} \
      ~{true="--no-version" false="" noNoVersion} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(renameRenameChrs) then ("--rename-chrs " +  '"' + renameRenameChrs + '"') else ""} \
      ~{true="--samples" false="" samplesSamples} \
      ~{true="--samples-file" false="" samplesSamplesFile} \
      ~{true="--single-overlaps" false="" singleSingleOverlaps} \
      ~{if defined(removeRemove) then ("--remove " +  '"' + removeRemove + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}