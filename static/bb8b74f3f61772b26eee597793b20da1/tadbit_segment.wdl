version 1.0

task TadbitSegment {
  input {
    File workdirWorkdir
    File tmpTmpDb
    Boolean noNoSql
    Boolean allAllBins
    File mMReads
    File biasesBiases
    Int resolutionResolution
    File normNormMatrix
    File rawRawMatrix
    Array[Int]+ filterFilter
    Boolean noxNox
    Boolean onlyOnlyCompartments
    Boolean onlyOnlyTads
    Boolean verboseVerbose
    Int jobidJobid
    Array[String]+ chromosomesChromosomes
    String cpuCpu
    Boolean forceForce
    File richRichInA
    File fastFastA
    Boolean saveSaveCorr
    Boolean fixFixCorrScale
    String formatFormat
    Int nNEvs
    Array[Int]+ evEvIndex
    Int maxMaxTadSize
  }
  command <<<
    tadbit segment \
      ~{if defined(workdirWorkdir) then ("--workdir " +  '"' + workdirWorkdir + '"') else ""} \
      ~{if defined(tmpTmpDb) then ("--tmpdb " +  '"' + tmpTmpDb + '"') else ""} \
      ~{true="--nosql" false="" noNoSql} \
      ~{true="--all_bins" false="" allAllBins} \
      ~{if defined(mMReads) then ("--mreads " +  '"' + mMReads + '"') else ""} \
      ~{if defined(biasesBiases) then ("--biases " +  '"' + biasesBiases + '"') else ""} \
      ~{if defined(resolutionResolution) then ("--resolution " +  '"' + resolutionResolution + '"') else ""} \
      ~{if defined(normNormMatrix) then ("--norm_matrix " +  '"' + normNormMatrix + '"') else ""} \
      ~{if defined(rawRawMatrix) then ("--raw_matrix " +  '"' + rawRawMatrix + '"') else ""} \
      ~{if defined(filterFilter) then ("--filter " +  '"' + filterFilter + '"') else ""} \
      ~{true="--noX" false="" noxNox} \
      ~{true="--only_compartments" false="" onlyOnlyCompartments} \
      ~{true="--only_tads" false="" onlyOnlyTads} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(jobidJobid) then ("--jobid " +  '"' + jobidJobid + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(cpuCpu) then ("--cpu " +  '"' + cpuCpu + '"') else ""} \
      ~{true="--force" false="" forceForce} \
      ~{if defined(richRichInA) then ("--rich_in_A " +  '"' + richRichInA + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--savecorr" false="" saveSaveCorr} \
      ~{true="--fix_corr_scale" false="" fixFixCorrScale} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(nNEvs) then ("--n_evs " +  '"' + nNEvs + '"') else ""} \
      ~{if defined(evEvIndex) then ("--ev_index " +  '"' + evEvIndex + '"') else ""} \
      ~{if defined(maxMaxTadSize) then ("--max_tad_size " +  '"' + maxMaxTadSize + '"') else ""}
  >>>
}