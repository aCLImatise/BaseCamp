version 1.0

task MakeHub.py {
  input {
    Boolean printPrintUsageExamples
    String emailEmail
    String genomeGenome
    String longLongLabel
    String shortShortLabel
    Array[String]+ bamBam
    String coresCores
    Boolean displayDisplayBamAsBam
    String gemGemOmaFilteredPredictions
    String brakerBrakerOutDir
    String makerMakerGff
    String glimmerGlimmerGff
    String snapSnapGff
    String anAnNot
    Array[String]+ geneGeneTrack
    Boolean addAddTrack
    String outdirOutdir
    Boolean noNoRepeats
    String samSamToolsPath
    String bam2wigBam2wigPath
    String hintsHints
    String trainTrainGenes
    String genemarkGenemark
    String augAugAbInitio
    String augAugHints
    String augAugAbInitioUtr
    String augAugHintsUtr
    String latinLatinName
    String assemblyAssemblyVersion
    Boolean noNoTmpRm
    Boolean noNoGenePredToBigGenePred
    String verbosityVerbosity
  }
  command <<<
    make_hub.py \
      ~{true="--printUsageExamples" false="" printPrintUsageExamples} \
      ~{if defined(emailEmail) then ("--email " +  '"' + emailEmail + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(longLongLabel) then ("--long_label " +  '"' + longLongLabel + '"') else ""} \
      ~{if defined(shortShortLabel) then ("--short_label " +  '"' + shortShortLabel + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(coresCores) then ("--cores " +  '"' + coresCores + '"') else ""} \
      ~{true="--display_bam_as_bam" false="" displayDisplayBamAsBam} \
      ~{if defined(gemGemOmaFilteredPredictions) then ("--gemoma_filtered_predictions " +  '"' + gemGemOmaFilteredPredictions + '"') else ""} \
      ~{if defined(brakerBrakerOutDir) then ("--braker_out_dir " +  '"' + brakerBrakerOutDir + '"') else ""} \
      ~{if defined(makerMakerGff) then ("--maker_gff " +  '"' + makerMakerGff + '"') else ""} \
      ~{if defined(glimmerGlimmerGff) then ("--glimmer_gff " +  '"' + glimmerGlimmerGff + '"') else ""} \
      ~{if defined(snapSnapGff) then ("--snap_gff " +  '"' + snapSnapGff + '"') else ""} \
      ~{if defined(anAnNot) then ("--annot " +  '"' + anAnNot + '"') else ""} \
      ~{if defined(geneGeneTrack) then ("--gene_track " +  '"' + geneGeneTrack + '"') else ""} \
      ~{true="--add_track" false="" addAddTrack} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--no_repeats" false="" noNoRepeats} \
      ~{if defined(samSamToolsPath) then ("--SAMTOOLS_PATH " +  '"' + samSamToolsPath + '"') else ""} \
      ~{if defined(bam2wigBam2wigPath) then ("--BAM2WIG_PATH " +  '"' + bam2wigBam2wigPath + '"') else ""} \
      ~{if defined(hintsHints) then ("--hints " +  '"' + hintsHints + '"') else ""} \
      ~{if defined(trainTrainGenes) then ("--traingenes " +  '"' + trainTrainGenes + '"') else ""} \
      ~{if defined(genemarkGenemark) then ("--genemark " +  '"' + genemarkGenemark + '"') else ""} \
      ~{if defined(augAugAbInitio) then ("--aug_ab_initio " +  '"' + augAugAbInitio + '"') else ""} \
      ~{if defined(augAugHints) then ("--aug_hints " +  '"' + augAugHints + '"') else ""} \
      ~{if defined(augAugAbInitioUtr) then ("--aug_ab_initio_utr " +  '"' + augAugAbInitioUtr + '"') else ""} \
      ~{if defined(augAugHintsUtr) then ("--aug_hints_utr " +  '"' + augAugHintsUtr + '"') else ""} \
      ~{if defined(latinLatinName) then ("--latin_name " +  '"' + latinLatinName + '"') else ""} \
      ~{if defined(assemblyAssemblyVersion) then ("--assembly_version " +  '"' + assemblyAssemblyVersion + '"') else ""} \
      ~{true="--no_tmp_rm" false="" noNoTmpRm} \
      ~{true="--no_genePredToBigGenePred" false="" noNoGenePredToBigGenePred} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""}
  >>>
}