version 1.0

task MobRecon {
  input {
    String outdirOutdir
    String inInFile
    String numNumThreads
    Int maxMaxContigSize
    Int maxMaxPlasmidSize
    Int minMinRepEvalue
    Int minMinMobEvalue
    Int minMinConEvalue
    Int minMinRppEvalue
    Int minMinLength
    Int minMinRepIdent
    Int minMinMobIdent
    Int minMinConIdent
    Int minMinRppIdent
    Int minMinRepCov
    Int minMinMobCov
    Int minMinConCov
    Int minMinRppCov
    Int minMinOverlap
    Boolean unicycleUnicycleRContigs
    Boolean runRunOverhang
    Boolean keepKeepTmp
    Boolean runRunTypeR
    Boolean debugDebug
    String plasmidPlasmidDb
    String plasmidPlasmidMashDb
    String plasmidPlasmidDbType
    String plasmidPlasmidReplicons
    String repetitiveRepetitiveMask
    String plasmidPlasmidMob
    String databaseDatabaseDirectory
  }
  command <<<
    mob_recon \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num_threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(maxMaxContigSize) then ("--max_contig_size " +  '"' + maxMaxContigSize + '"') else ""} \
      ~{if defined(maxMaxPlasmidSize) then ("--max_plasmid_size " +  '"' + maxMaxPlasmidSize + '"') else ""} \
      ~{if defined(minMinRepEvalue) then ("--min_rep_evalue " +  '"' + minMinRepEvalue + '"') else ""} \
      ~{if defined(minMinMobEvalue) then ("--min_mob_evalue " +  '"' + minMinMobEvalue + '"') else ""} \
      ~{if defined(minMinConEvalue) then ("--min_con_evalue " +  '"' + minMinConEvalue + '"') else ""} \
      ~{if defined(minMinRppEvalue) then ("--min_rpp_evalue " +  '"' + minMinRppEvalue + '"') else ""} \
      ~{if defined(minMinLength) then ("--min_length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(minMinRepIdent) then ("--min_rep_ident " +  '"' + minMinRepIdent + '"') else ""} \
      ~{if defined(minMinMobIdent) then ("--min_mob_ident " +  '"' + minMinMobIdent + '"') else ""} \
      ~{if defined(minMinConIdent) then ("--min_con_ident " +  '"' + minMinConIdent + '"') else ""} \
      ~{if defined(minMinRppIdent) then ("--min_rpp_ident " +  '"' + minMinRppIdent + '"') else ""} \
      ~{if defined(minMinRepCov) then ("--min_rep_cov " +  '"' + minMinRepCov + '"') else ""} \
      ~{if defined(minMinMobCov) then ("--min_mob_cov " +  '"' + minMinMobCov + '"') else ""} \
      ~{if defined(minMinConCov) then ("--min_con_cov " +  '"' + minMinConCov + '"') else ""} \
      ~{if defined(minMinRppCov) then ("--min_rpp_cov " +  '"' + minMinRppCov + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min_overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{true="--unicycler_contigs" false="" unicycleUnicycleRContigs} \
      ~{true="--run_overhang" false="" runRunOverhang} \
      ~{true="--keep_tmp" false="" keepKeepTmp} \
      ~{true="--run_typer" false="" runRunTypeR} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(plasmidPlasmidDb) then ("--plasmid_db " +  '"' + plasmidPlasmidDb + '"') else ""} \
      ~{if defined(plasmidPlasmidMashDb) then ("--plasmid_mash_db " +  '"' + plasmidPlasmidMashDb + '"') else ""} \
      ~{if defined(plasmidPlasmidDbType) then ("--plasmid_db_type " +  '"' + plasmidPlasmidDbType + '"') else ""} \
      ~{if defined(plasmidPlasmidReplicons) then ("--plasmid_replicons " +  '"' + plasmidPlasmidReplicons + '"') else ""} \
      ~{if defined(repetitiveRepetitiveMask) then ("--repetitive_mask " +  '"' + repetitiveRepetitiveMask + '"') else ""} \
      ~{if defined(plasmidPlasmidMob) then ("--plasmid_mob " +  '"' + plasmidPlasmidMob + '"') else ""} \
      ~{if defined(databaseDatabaseDirectory) then ("--database_directory " +  '"' + databaseDatabaseDirectory + '"') else ""}
  >>>
}