version 1.0

task LTRPipeline {
  input {
    Boolean versionVersion
    String trfTrfPrgm
    String ltrLtrRetrieverDir
    String rRScoutDir
    String rmbRmbLastDir
    String ninjaNinjaDir
    String genomeGenomeToolsDir
    String cdCdHitDir
    String abbAbbLastDir
    String repeatmaskerRepeatmaskerDir
    String maffMaffTDir
    String reconReconDir
  }
  command <<<
    LTRPipeline \
      ~{true="-version" false="" versionVersion} \
      ~{if defined(trfTrfPrgm) then ("-trf_prgm " +  '"' + trfTrfPrgm + '"') else ""} \
      ~{if defined(ltrLtrRetrieverDir) then ("-ltr_retriever_dir " +  '"' + ltrLtrRetrieverDir + '"') else ""} \
      ~{if defined(rRScoutDir) then ("-rscout_dir " +  '"' + rRScoutDir + '"') else ""} \
      ~{if defined(rmbRmbLastDir) then ("-rmblast_dir " +  '"' + rmbRmbLastDir + '"') else ""} \
      ~{if defined(ninjaNinjaDir) then ("-ninja_dir " +  '"' + ninjaNinjaDir + '"') else ""} \
      ~{if defined(genomeGenomeToolsDir) then ("-genometools_dir " +  '"' + genomeGenomeToolsDir + '"') else ""} \
      ~{if defined(cdCdHitDir) then ("-cdhit_dir " +  '"' + cdCdHitDir + '"') else ""} \
      ~{if defined(abbAbbLastDir) then ("-abblast_dir " +  '"' + abbAbbLastDir + '"') else ""} \
      ~{if defined(repeatmaskerRepeatmaskerDir) then ("-repeatmasker_dir " +  '"' + repeatmaskerRepeatmaskerDir + '"') else ""} \
      ~{if defined(maffMaffTDir) then ("-mafft_dir " +  '"' + maffMaffTDir + '"') else ""} \
      ~{if defined(reconReconDir) then ("-recon_dir " +  '"' + reconReconDir + '"') else ""}
  >>>
}