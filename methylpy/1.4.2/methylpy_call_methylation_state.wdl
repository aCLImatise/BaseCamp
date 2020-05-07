version 1.0

task MethylpyCallMethylationState {
  input {
    String inputInputFile
    String sampleSample
    String refRefFastA
    String pairedPairedEnd
    File pathPathToOutput
    String numNumProcs
    String numNumUpstreamBases
    String numNumDownstreamBases
    String generateGenerateAllCFile
    String generateGenerateMPileUpFile
    String compressCompressOutput
    String bBGzip
    File pathPathToBGzip
    File pathPathToTabIx
    File pathPathToSamTools
    String removeRemoveChrPrefix
    String addAddSnpInfo
    String unmethylatedUnmethylatedControl
    String binBinOmTest
    String sigSigCutOff
    Int minMinMapq
    Int minMinCov
    Int minMinBaseQuality
    String keepKeepTempFiles
  }
  command <<<
    methylpy call-methylation-state \
      ~{if defined(inputInputFile) then ("--input-file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(refRefFastA) then ("--ref-fasta " +  '"' + refRefFastA + '"') else ""} \
      ~{if defined(pairedPairedEnd) then ("--paired-end " +  '"' + pairedPairedEnd + '"') else ""} \
      ~{if defined(pathPathToOutput) then ("--path-to-output " +  '"' + pathPathToOutput + '"') else ""} \
      ~{if defined(numNumProcs) then ("--num-procs " +  '"' + numNumProcs + '"') else ""} \
      ~{if defined(numNumUpstreamBases) then ("--num-upstream-bases " +  '"' + numNumUpstreamBases + '"') else ""} \
      ~{if defined(numNumDownstreamBases) then ("--num-downstream-bases " +  '"' + numNumDownstreamBases + '"') else ""} \
      ~{if defined(generateGenerateAllCFile) then ("--generate-allc-file " +  '"' + generateGenerateAllCFile + '"') else ""} \
      ~{if defined(generateGenerateMPileUpFile) then ("--generate-mpileup-file " +  '"' + generateGenerateMPileUpFile + '"') else ""} \
      ~{if defined(compressCompressOutput) then ("--compress-output " +  '"' + compressCompressOutput + '"') else ""} \
      ~{if defined(bBGzip) then ("--bgzip " +  '"' + bBGzip + '"') else ""} \
      ~{if defined(pathPathToBGzip) then ("--path-to-bgzip " +  '"' + pathPathToBGzip + '"') else ""} \
      ~{if defined(pathPathToTabIx) then ("--path-to-tabix " +  '"' + pathPathToTabIx + '"') else ""} \
      ~{if defined(pathPathToSamTools) then ("--path-to-samtools " +  '"' + pathPathToSamTools + '"') else ""} \
      ~{if defined(removeRemoveChrPrefix) then ("--remove-chr-prefix " +  '"' + removeRemoveChrPrefix + '"') else ""} \
      ~{if defined(addAddSnpInfo) then ("--add-snp-info " +  '"' + addAddSnpInfo + '"') else ""} \
      ~{if defined(unmethylatedUnmethylatedControl) then ("--unmethylated-control " +  '"' + unmethylatedUnmethylatedControl + '"') else ""} \
      ~{if defined(binBinOmTest) then ("--binom-test " +  '"' + binBinOmTest + '"') else ""} \
      ~{if defined(sigSigCutOff) then ("--sig-cutoff " +  '"' + sigSigCutOff + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(minMinBaseQuality) then ("--min-base-quality " +  '"' + minMinBaseQuality + '"') else ""} \
      ~{if defined(keepKeepTempFiles) then ("--keep-temp-files " +  '"' + keepKeepTempFiles + '"') else ""}
  >>>
}