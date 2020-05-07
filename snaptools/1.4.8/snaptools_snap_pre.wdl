version 1.0

task SnaptoolsSnapPre {
  input {
    String inputInputFile
    String outputOutputSnap
    String genomeGenomeName
    String genomeGenomeSize
    String barcodeBarcodeFile
    Int minMinMapq
    Int minMinFlen
    Int maxMaxFlen
    Int minMinCov
    Int maxMaxNum
    String keepKeepChrm
    String keepKeepSingle
    String keepKeepSecondary
    String keepKeepDiscordant
    String tmpTmpFolder
    String overwriteOverwrite
    String qcQcFile
    String verboseVerbose
  }
  command <<<
    snaptools snap-pre \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(outputOutputSnap) then ("--output-snap " +  '"' + outputOutputSnap + '"') else ""} \
      ~{if defined(genomeGenomeName) then ("--genome-name " +  '"' + genomeGenomeName + '"') else ""} \
      ~{if defined(genomeGenomeSize) then ("--genome-size " +  '"' + genomeGenomeSize + '"') else ""} \
      ~{if defined(barcodeBarcodeFile) then ("--barcode-file " +  '"' + barcodeBarcodeFile + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(minMinFlen) then ("--min-flen " +  '"' + minMinFlen + '"') else ""} \
      ~{if defined(maxMaxFlen) then ("--max-flen " +  '"' + maxMaxFlen + '"') else ""} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(maxMaxNum) then ("--max-num " +  '"' + maxMaxNum + '"') else ""} \
      ~{if defined(keepKeepChrm) then ("--keep-chrm " +  '"' + keepKeepChrm + '"') else ""} \
      ~{if defined(keepKeepSingle) then ("--keep-single " +  '"' + keepKeepSingle + '"') else ""} \
      ~{if defined(keepKeepSecondary) then ("--keep-secondary " +  '"' + keepKeepSecondary + '"') else ""} \
      ~{if defined(keepKeepDiscordant) then ("--keep-discordant " +  '"' + keepKeepDiscordant + '"') else ""} \
      ~{if defined(tmpTmpFolder) then ("--tmp-folder " +  '"' + tmpTmpFolder + '"') else ""} \
      ~{if defined(overwriteOverwrite) then ("--overwrite " +  '"' + overwriteOverwrite + '"') else ""} \
      ~{if defined(qcQcFile) then ("--qc-file " +  '"' + qcQcFile + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}