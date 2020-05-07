version 1.0

task RunMidas.pySnps {
  input {
    Boolean removeRemoveTemp
    Boolean buildBuildDb
    Boolean alignAlign
    Boolean pilePileUp
    String dD
    Float speciesSpeciesCov
    Int speciesSpeciesTopN
    String speciesSpeciesId
    Boolean interleavedInterleaved
    String sS
    Int nN
    String mM
    String tT
    Float mapMapId
    Int mapqMapq
    Int baseBaseQ
    Int readReadQ
    Float alnAlnCov
    Int trimTrim
    Boolean discardDiscard
    Boolean baqBaq
    Boolean adjustAdjustMq
    String? outdirOutdir
  }
  command <<<
    run_midas.py snps \
      ~{outdirOutdir} \
      ~{true="--remove_temp" false="" removeRemoveTemp} \
      ~{true="--build_db" false="" buildBuildDb} \
      ~{true="--align" false="" alignAlign} \
      ~{true="--pileup" false="" pilePileUp} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(speciesSpeciesCov) then ("--species_cov " +  '"' + speciesSpeciesCov + '"') else ""} \
      ~{if defined(speciesSpeciesTopN) then ("--species_topn " +  '"' + speciesSpeciesTopN + '"') else ""} \
      ~{if defined(speciesSpeciesId) then ("--species_id " +  '"' + speciesSpeciesId + '"') else ""} \
      ~{true="--interleaved" false="" interleavedInterleaved} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(mapMapId) then ("--mapid " +  '"' + mapMapId + '"') else ""} \
      ~{if defined(mapqMapq) then ("--mapq " +  '"' + mapqMapq + '"') else ""} \
      ~{if defined(baseBaseQ) then ("--baseq " +  '"' + baseBaseQ + '"') else ""} \
      ~{if defined(readReadQ) then ("--readq " +  '"' + readReadQ + '"') else ""} \
      ~{if defined(alnAlnCov) then ("--aln_cov " +  '"' + alnAlnCov + '"') else ""} \
      ~{if defined(trimTrim) then ("--trim " +  '"' + trimTrim + '"') else ""} \
      ~{true="--discard" false="" discardDiscard} \
      ~{true="--baq" false="" baqBaq} \
      ~{true="--adjust_mq" false="" adjustAdjustMq}
  >>>
}