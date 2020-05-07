version 1.0

task BcftoolsConcat {
  input {
    Boolean allowAllowOverlaps
    Boolean compactCompactPs
    String rmRmDups
    Boolean removeRemoveDuplicates
    File fileFileList
    Boolean ligateLigate
    Boolean noNoVersion
    Boolean naiveNaive
    Boolean naiveNaiveForce
    File outputOutput
    Boolean outputOutputType
    Int minMinPq
    String regionsRegions
    File regionsRegionsFile
    Int threadsThreads
    Boolean verboseVerbose
  }
  command <<<
    bcftools concat \
      ~{true="--allow-overlaps" false="" allowAllowOverlaps} \
      ~{true="--compact-PS" false="" compactCompactPs} \
      ~{if defined(rmRmDups) then ("--rm-dups " +  '"' + rmRmDups + '"') else ""} \
      ~{true="--remove-duplicates" false="" removeRemoveDuplicates} \
      ~{if defined(fileFileList) then ("--file-list " +  '"' + fileFileList + '"') else ""} \
      ~{true="--ligate" false="" ligateLigate} \
      ~{true="--no-version" false="" noNoVersion} \
      ~{true="--naive" false="" naiveNaive} \
      ~{true="--naive-force" false="" naiveNaiveForce} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{true="--output-type" false="" outputOutputType} \
      ~{if defined(minMinPq) then ("--min-PQ " +  '"' + minMinPq + '"') else ""} \
      ~{if defined(regionsRegions) then ("--regions " +  '"' + regionsRegions + '"') else ""} \
      ~{if defined(regionsRegionsFile) then ("--regions-file " +  '"' + regionsRegionsFile + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}