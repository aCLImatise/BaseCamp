version 1.0

task GuidescanGuidequery {
  input {
    String bB
    String cC
    String batchBatch
    String sequenceSequence
    String targetTarget
    String flankFlankDistance
    Boolean oneOne
    String oO
    String outputOutputFormat
    Boolean headerHeader
    Boolean offOff
    String sortSort
    String selectSelect
    String nN
    String anAnNot
    String featureFeatureBedFile
    String fastFastAFile
    String blatBlat
  }
  command <<<
    guidescan_guidequery \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(batchBatch) then ("--batch " +  '"' + batchBatch + '"') else ""} \
      ~{if defined(sequenceSequence) then ("--sequence " +  '"' + sequenceSequence + '"') else ""} \
      ~{if defined(targetTarget) then ("--target " +  '"' + targetTarget + '"') else ""} \
      ~{if defined(flankFlankDistance) then ("--flankdistance " +  '"' + flankFlankDistance + '"') else ""} \
      ~{true="--one" false="" oneOne} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output_format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{true="--header" false="" headerHeader} \
      ~{true="--off" false="" offOff} \
      ~{if defined(sortSort) then ("--sort " +  '"' + sortSort + '"') else ""} \
      ~{if defined(selectSelect) then ("--select " +  '"' + selectSelect + '"') else ""} \
      ~{if defined(nN) then ("-n " +  '"' + nN + '"') else ""} \
      ~{if defined(anAnNot) then ("--annot " +  '"' + anAnNot + '"') else ""} \
      ~{if defined(featureFeatureBedFile) then ("--feature_bed_file " +  '"' + featureFeatureBedFile + '"') else ""} \
      ~{if defined(fastFastAFile) then ("--fasta_file " +  '"' + fastFastAFile + '"') else ""} \
      ~{if defined(blatBlat) then ("--blat " +  '"' + blatBlat + '"') else ""}
  >>>
}