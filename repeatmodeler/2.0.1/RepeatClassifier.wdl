version 1.0

task RepeatClassifier {
  input {
    String maffMaffTDir
    String rmbRmbLastDir
    String ninjaNinjaDir
    String cdCdHitDir
    String abbAbbLastDir
    String rRScoutDir
    String reconReconDir
    String genomeGenomeToolsDir
    String trfTrfPrgm
    String repeatmaskerRepeatmaskerDir
    String ltrLtrRetrieverDir
  }
  command <<<
    RepeatClassifier \
      ~{if defined(maffMaffTDir) then ("-mafft_dir " +  '"' + maffMaffTDir + '"') else ""} \
      ~{if defined(rmbRmbLastDir) then ("-rmblast_dir " +  '"' + rmbRmbLastDir + '"') else ""} \
      ~{if defined(ninjaNinjaDir) then ("-ninja_dir " +  '"' + ninjaNinjaDir + '"') else ""} \
      ~{if defined(cdCdHitDir) then ("-cdhit_dir " +  '"' + cdCdHitDir + '"') else ""} \
      ~{if defined(abbAbbLastDir) then ("-abblast_dir " +  '"' + abbAbbLastDir + '"') else ""} \
      ~{if defined(rRScoutDir) then ("-rscout_dir " +  '"' + rRScoutDir + '"') else ""} \
      ~{if defined(reconReconDir) then ("-recon_dir " +  '"' + reconReconDir + '"') else ""} \
      ~{if defined(genomeGenomeToolsDir) then ("-genometools_dir " +  '"' + genomeGenomeToolsDir + '"') else ""} \
      ~{if defined(trfTrfPrgm) then ("-trf_prgm " +  '"' + trfTrfPrgm + '"') else ""} \
      ~{if defined(repeatmaskerRepeatmaskerDir) then ("-repeatmasker_dir " +  '"' + repeatmaskerRepeatmaskerDir + '"') else ""} \
      ~{if defined(ltrLtrRetrieverDir) then ("-ltr_retriever_dir " +  '"' + ltrLtrRetrieverDir + '"') else ""}
  >>>
}