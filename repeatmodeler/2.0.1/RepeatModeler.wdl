version 1.0

task RepeatModeler {
  input {
    String genomeGenomeToolsDir
    String trfTrfPrgm
    String cdCdHitDir
    String rRScoutDir
    String reconReconDir
    String ltrLtrRetrieverDir
    String repeatmaskerRepeatmaskerDir
    String abbAbbLastDir
    String rmbRmbLastDir
    String maffMaffTDir
    String ninjaNinjaDir
  }
  command <<<
    RepeatModeler \
      ~{if defined(genomeGenomeToolsDir) then ("-genometools_dir " +  '"' + genomeGenomeToolsDir + '"') else ""} \
      ~{if defined(trfTrfPrgm) then ("-trf_prgm " +  '"' + trfTrfPrgm + '"') else ""} \
      ~{if defined(cdCdHitDir) then ("-cdhit_dir " +  '"' + cdCdHitDir + '"') else ""} \
      ~{if defined(rRScoutDir) then ("-rscout_dir " +  '"' + rRScoutDir + '"') else ""} \
      ~{if defined(reconReconDir) then ("-recon_dir " +  '"' + reconReconDir + '"') else ""} \
      ~{if defined(ltrLtrRetrieverDir) then ("-ltr_retriever_dir " +  '"' + ltrLtrRetrieverDir + '"') else ""} \
      ~{if defined(repeatmaskerRepeatmaskerDir) then ("-repeatmasker_dir " +  '"' + repeatmaskerRepeatmaskerDir + '"') else ""} \
      ~{if defined(abbAbbLastDir) then ("-abblast_dir " +  '"' + abbAbbLastDir + '"') else ""} \
      ~{if defined(rmbRmbLastDir) then ("-rmblast_dir " +  '"' + rmbRmbLastDir + '"') else ""} \
      ~{if defined(maffMaffTDir) then ("-mafft_dir " +  '"' + maffMaffTDir + '"') else ""} \
      ~{if defined(ninjaNinjaDir) then ("-ninja_dir " +  '"' + ninjaNinjaDir + '"') else ""}
  >>>
}