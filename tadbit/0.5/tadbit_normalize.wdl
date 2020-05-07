version 1.0

task TadbitNormalize {
  input {
    File workdirWorkdir
    Int resolutionResolution
    File bamBam
    Int jobidJobid
    Int maxMaxNJobs
    Boolean forceForce
    File tmpTmpDb
    String cpusCpus
    Boolean normalizeNormalizeOnly
    Boolean noxNox
    Float percPercZeros
    Int minMinCount
    Int minMinPerc
    Int maxMaxPerc
    Boolean filterFilterOnly
    Boolean fastFastFilter
    String bB
    Array[Int]+ filterFilter
    Boolean validValid
    String normalizationNormalization
    String biasesBiasesPath
    File mappMappAbility
    File fastFastA
    String renzRenz
    String factorFactor
    Float propPropData
    Int seedSeed
  }
  command <<<
    tadbit normalize \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(jobidJobid) then ("--jobid " +  '"' + jobidJobid + '"') else ""} \
      ~{if defined(maxMaxNJobs) then ("--max_njobs " +  '"' + maxMaxNJobs + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(tmpTmpDb) then ("--tmpdb " +  '"' + tmpTmpDb + '"') else ""} \
      ~{if defined(cpusCpus) then ("--cpus " +  '"' + cpusCpus + '"') else ""} \
      ~{true="--normalize_only" false="" normalizeNormalizeOnly} \
      ~{true="--noX" false="" noxNox} \
      ~{if defined(percPercZeros) then ("--perc_zeros " +  '"' + percPercZeros + '"') else ""} \
      ~{if defined(minMinCount) then ("--min_count " +  '"' + minMinCount + '"') else ""} \
      ~{if defined(minMinPerc) then ("--min_perc " +  '"' + minMinPerc + '"') else ""} \
      ~{if defined(maxMaxPerc) then ("--max_perc " +  '"' + maxMaxPerc + '"') else ""} \
      ~{true="--filter_only" false="" filterFilterOnly} \
      ~{true="--fast_filter" false="" fastFastFilter} \
      ~{if defined(bB) then ("-B " +  '"' + bB + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{true="--valid" false="" validValid} \
      ~{if defined(normalizationNormalization) then ("--normalization " +  '"' + normalizationNormalization + '"') else ""} \
      ~{if defined(biasesBiasesPath) then ("--biases_path " +  '"' + biasesBiasesPath + '"') else ""} \
      ~{if defined(mappMappAbility) then ("--mappability " +  '"' + mappMappAbility + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(renzRenz) then ("--renz " +  '"' + renzRenz + '"') else ""} \
      ~{if defined(factorFactor) then ("--factor " +  '"' + factorFactor + '"') else ""} \
      ~{if defined(propPropData) then ("--prop_data " +  '"' + propPropData + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""}
  >>>
}