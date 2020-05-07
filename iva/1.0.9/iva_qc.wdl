version 1.0

task IvaQc {
  input {
    Directory emblEmblDir
    Directory refRefDb
    File fF
    File rR
    File frFr
    Int cdsCdsMinHitLength
    Float cdsCdsMinHitId
    Int ctgCtgMinHitLength
    Float ctgCtgMinHitId
    Int sSMaltK
    Int sSMaltS
    Float sSMaltId
    Int gageGageMiniD
    Boolean krakenKrakenPreload
    File rattRattConfig
    String ctgCtgLayoutPlotTitle
    Int minMinRefCov
    Boolean noNoClean
    Int threadsThreads
  }
  command <<<
    iva_qc \
      ~{if defined(emblEmblDir) then ("--embl_dir " +  '"' + emblEmblDir + '"') else ""} \
      ~{if defined(refRefDb) then ("--ref_db " +  '"' + refRefDb + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(frFr) then ("--fr " +  '"' + frFr + '"') else ""} \
      ~{if defined(cdsCdsMinHitLength) then ("--cds_min_hit_length " +  '"' + cdsCdsMinHitLength + '"') else ""} \
      ~{if defined(cdsCdsMinHitId) then ("--cds_min_hit_id " +  '"' + cdsCdsMinHitId + '"') else ""} \
      ~{if defined(ctgCtgMinHitLength) then ("--ctg_min_hit_length " +  '"' + ctgCtgMinHitLength + '"') else ""} \
      ~{if defined(ctgCtgMinHitId) then ("--ctg_min_hit_id " +  '"' + ctgCtgMinHitId + '"') else ""} \
      ~{if defined(sSMaltK) then ("--smalt_k " +  '"' + sSMaltK + '"') else ""} \
      ~{if defined(sSMaltS) then ("--smalt_s " +  '"' + sSMaltS + '"') else ""} \
      ~{if defined(sSMaltId) then ("--smalt_id " +  '"' + sSMaltId + '"') else ""} \
      ~{if defined(gageGageMiniD) then ("--gage_minid " +  '"' + gageGageMiniD + '"') else ""} \
      ~{true="--kraken_preload" false="" krakenKrakenPreload} \
      ~{if defined(rattRattConfig) then ("--ratt_config " +  '"' + rattRattConfig + '"') else ""} \
      ~{if defined(ctgCtgLayoutPlotTitle) then ("--ctg_layout_plot_title " +  '"' + ctgCtgLayoutPlotTitle + '"') else ""} \
      ~{if defined(minMinRefCov) then ("--min_ref_cov " +  '"' + minMinRefCov + '"') else ""} \
      ~{true="--noclean" false="" noNoClean} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}