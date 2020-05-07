version 1.0

task MobTyper {
  input {
    String outdirOutdir
    String inInFile
    String numNumThreads
    Int minMinRepEvalue
    Int minMinMobEvalue
    Int minMinConEvalue
    Int minMinOriEvalue
    Int minMinMpfEvalue
    Int minMinRepIdent
    Int minMinMobIdent
    Int minMinOriIdent
    Int minMinMpfIdent
    Int minMinRepCov
    Int minMinMobCov
    Int minMinOriCov
    Int minMinMpfCov
    Int minMinOverlap
    Boolean keepKeepTmp
    Boolean debugDebug
    String plasmidPlasmidMashDb
    String plasmidPlasmidReplicons
    String plasmidPlasmidMob
    String plasmidPlasmidMpf
    String plasmidPlasmidOrIt
    Boolean hostHostRangeDetailed
    String databaseDatabaseDirectory
  }
  command <<<
    mob_typer \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(minMinRepEvalue) then ("--min_rep_evalue " +  '"' + minMinRepEvalue + '"') else ""} \
      ~{if defined(minMinMobEvalue) then ("--min_mob_evalue " +  '"' + minMinMobEvalue + '"') else ""} \
      ~{if defined(minMinConEvalue) then ("--min_con_evalue " +  '"' + minMinConEvalue + '"') else ""} \
      ~{if defined(minMinOriEvalue) then ("--min_ori_evalue " +  '"' + minMinOriEvalue + '"') else ""} \
      ~{if defined(minMinMpfEvalue) then ("--min_mpf_evalue " +  '"' + minMinMpfEvalue + '"') else ""} \
      ~{if defined(minMinRepIdent) then ("--min_rep_ident " +  '"' + minMinRepIdent + '"') else ""} \
      ~{if defined(minMinMobIdent) then ("--min_mob_ident " +  '"' + minMinMobIdent + '"') else ""} \
      ~{if defined(minMinOriIdent) then ("--min_ori_ident " +  '"' + minMinOriIdent + '"') else ""} \
      ~{if defined(minMinMpfIdent) then ("--min_mpf_ident " +  '"' + minMinMpfIdent + '"') else ""} \
      ~{if defined(minMinRepCov) then ("--min_rep_cov " +  '"' + minMinRepCov + '"') else ""} \
      ~{if defined(minMinMobCov) then ("--min_mob_cov " +  '"' + minMinMobCov + '"') else ""} \
      ~{if defined(minMinOriCov) then ("--min_ori_cov " +  '"' + minMinOriCov + '"') else ""} \
      ~{if defined(minMinMpfCov) then ("--min_mpf_cov " +  '"' + minMinMpfCov + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min_overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{true="--keep_tmp" false="" keepKeepTmp} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(plasmidPlasmidMashDb) then ("--plasmid_mash_db " +  '"' + plasmidPlasmidMashDb + '"') else ""} \
      ~{if defined(plasmidPlasmidReplicons) then ("--plasmid_replicons " +  '"' + plasmidPlasmidReplicons + '"') else ""} \
      ~{if defined(plasmidPlasmidMob) then ("--plasmid_mob " +  '"' + plasmidPlasmidMob + '"') else ""} \
      ~{if defined(plasmidPlasmidMpf) then ("--plasmid_mpf " +  '"' + plasmidPlasmidMpf + '"') else ""} \
      ~{if defined(plasmidPlasmidOrIt) then ("--plasmid_orit " +  '"' + plasmidPlasmidOrIt + '"') else ""} \
      ~{true="--host_range_detailed" false="" hostHostRangeDetailed} \
      ~{if defined(databaseDatabaseDirectory) then ("--database_directory " +  '"' + databaseDatabaseDirectory + '"') else ""}
  >>>
}