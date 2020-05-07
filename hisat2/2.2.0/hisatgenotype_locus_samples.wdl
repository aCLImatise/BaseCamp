version 1.0

task HisatgenotypeLocusSamples.py {
  input {
    String referenceReferenceType
    String regionRegionList
    String readReadDir
    String numNumEditDist
    String threadsThreads
    Boolean assemblyAssembly
    Int maxMaxSample
    String outOutDir
    Boolean verboseVerbose
    Boolean platinumPlatinumCheck
  }
  command <<<
    hisatgenotype_locus_samples.py \
      ~{if defined(referenceReferenceType) then ("--reference-type " +  '"' + referenceReferenceType + '"') else ""} \
      ~{if defined(regionRegionList) then ("--region-list " +  '"' + regionRegionList + '"') else ""} \
      ~{if defined(readReadDir) then ("--read-dir " +  '"' + readReadDir + '"') else ""} \
      ~{if defined(numNumEditDist) then ("--num-editdist " +  '"' + numNumEditDist + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--assembly" false="" assemblyAssembly} \
      ~{if defined(maxMaxSample) then ("--max-sample " +  '"' + maxMaxSample + '"') else ""} \
      ~{if defined(outOutDir) then ("--out-dir " +  '"' + outOutDir + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--platinum-check" false="" platinumPlatinumCheck}
  >>>
}