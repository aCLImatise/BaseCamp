version 1.0

task Refiner {
  input {
    Boolean fooFoo
    String rmbRmbLastDir
    String ltrLtrRetrieverDir
    String abbAbbLastDir
    String ninjaNinjaDir
    String trfTrfPrgm
    String rRScoutDir
    String repeatmaskerRepeatmaskerDir
    String cdCdHitDir
    String maffMaffTDir
    String genomeGenomeToolsDir
    String reconReconDir
  }
  command <<<
    Refiner \
      ~{true="-foo" false="" fooFoo} \
      ~{if defined(rmbRmbLastDir) then ("-rmblast_dir " +  '"' + rmbRmbLastDir + '"') else ""} \
      ~{if defined(ltrLtrRetrieverDir) then ("-ltr_retriever_dir " +  '"' + ltrLtrRetrieverDir + '"') else ""} \
      ~{if defined(abbAbbLastDir) then ("-abblast_dir " +  '"' + abbAbbLastDir + '"') else ""} \
      ~{if defined(ninjaNinjaDir) then ("-ninja_dir " +  '"' + ninjaNinjaDir + '"') else ""} \
      ~{if defined(trfTrfPrgm) then ("-trf_prgm " +  '"' + trfTrfPrgm + '"') else ""} \
      ~{if defined(rRScoutDir) then ("-rscout_dir " +  '"' + rRScoutDir + '"') else ""} \
      ~{if defined(repeatmaskerRepeatmaskerDir) then ("-repeatmasker_dir " +  '"' + repeatmaskerRepeatmaskerDir + '"') else ""} \
      ~{if defined(cdCdHitDir) then ("-cdhit_dir " +  '"' + cdCdHitDir + '"') else ""} \
      ~{if defined(maffMaffTDir) then ("-mafft_dir " +  '"' + maffMaffTDir + '"') else ""} \
      ~{if defined(genomeGenomeToolsDir) then ("-genometools_dir " +  '"' + genomeGenomeToolsDir + '"') else ""} \
      ~{if defined(reconReconDir) then ("-recon_dir " +  '"' + reconReconDir + '"') else ""}
  >>>
}