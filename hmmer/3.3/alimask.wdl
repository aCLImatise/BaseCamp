version 1.0

task Alimask {
  input {
    String oO
    String modelModelRange
    String aliAliRange
    Boolean apApEndMask
    String modelModel2ali
    String ali2Ali2Model
    Boolean aminoAmino
    Boolean dnaDna
    Boolean rnaRna
    String outOutFormat
    Boolean fastFast
    Boolean handHand
    String symSymFrac
    String fragFragThresh
    Boolean wpbWpb
    Boolean wgsWgsC
    Boolean wWBlosum
    Boolean wWNone
    Boolean wWGiven
    String widWid
    String inInFormat
    String seedSeed
    String? msaMsaFile
    String? postPostMsaFile
  }
  command <<<
    alimask \
      ~{msaMsaFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(modelModelRange) then ("--modelrange " +  '"' + modelModelRange + '"') else ""} \
      ~{if defined(aliAliRange) then ("--alirange " +  '"' + aliAliRange + '"') else ""} \
      ~{true="--apendmask" false="" apApEndMask} \
      ~{if defined(modelModel2ali) then ("--model2ali " +  '"' + modelModel2ali + '"') else ""} \
      ~{if defined(ali2Ali2Model) then ("--ali2model " +  '"' + ali2Ali2Model + '"') else ""} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--dna" false="" dnaDna} \
      ~{true="--rna" false="" rnaRna} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--hand" false="" handHand} \
      ~{if defined(symSymFrac) then ("--symfrac " +  '"' + symSymFrac + '"') else ""} \
      ~{if defined(fragFragThresh) then ("--fragthresh " +  '"' + fragFragThresh + '"') else ""} \
      ~{true="--wpb" false="" wpbWpb} \
      ~{true="--wgsc" false="" wgsWgsC} \
      ~{true="--wblosum" false="" wWBlosum} \
      ~{true="--wnone" false="" wWNone} \
      ~{true="--wgiven" false="" wWGiven} \
      ~{if defined(widWid) then ("--wid " +  '"' + widWid + '"') else ""} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{postPostMsaFile}
  >>>
}