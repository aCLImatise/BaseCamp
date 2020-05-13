version 1.0

task MethylpyPairedEndPipeline {
  input {
    Array[String]+ readRead1Files
    Array[String]+ readRead2Files
    String sampleSample
    String forwardForwardRef
    String reverseReverseRef
    String refRefFastA
    Array[String]+ librariesLibraries
    File pathPathToOutput
    String pbPbAt
    String checkCheckDependency
    String numNumProcs
    String sortSortMem
    String numNumUpstreamBases
    String numNumDownstreamBases
    String generateGenerateAllCFile
    String generateGenerateMPileUpFile
    String compressCompressOutput
    String bBGzip
    File pathPathToBGzip
    File pathPathToTabIx
    String trimTrimReads
    File pathPathToCutAdapt
    File pathPathToAligner
    String alignerAligner
    Array[String]+ alignerAlignerOptions
    String mergeMergeByMaxMapq
    String removeRemoveClonal
    File pathPathToPicard
    String keepKeepClonalStats
    String javaJavaOptions
    File pathPathToSamTools
    String adapterAdapterSeqRead1
    String adapterAdapterSeqRead2
    String removeRemoveChrPrefix
    String addAddSnpInfo
    String unmethylatedUnmethylatedControl
    String binBinOmTest
    String sigSigCutOff
    Int minMinMapq
    Int minMinCov
    Int maxMaxAdapterRemoval
    String overlapOverlapLength
    String zeroZeroCap
    String errorErrorRate
    Int minMinQualScore
    Int minMinReadLen
    Int minMinBaseQuality
    String keepKeepTempFiles
  }
  command <<<
    methylpy paired-end-pipeline \
      ~{if defined(readRead1Files) then ("--read1-files " +  '"' + readRead1Files + '"') else ""} \
      ~{if defined(readRead2Files) then ("--read2-files " +  '"' + readRead2Files + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(forwardForwardRef) then ("--forward-ref " +  '"' + forwardForwardRef + '"') else ""} \
      ~{if defined(reverseReverseRef) then ("--reverse-ref " +  '"' + reverseReverseRef + '"') else ""} \
      ~{if defined(refRefFastA) then ("--ref-fasta " +  '"' + refRefFastA + '"') else ""} \
      ~{if defined(librariesLibraries) then ("--libraries " +  '"' + librariesLibraries + '"') else ""} \
      ~{if defined(pathPathToOutput) then ("--path-to-output " +  '"' + pathPathToOutput + '"') else ""} \
      ~{if defined(pbPbAt) then ("--pbat " +  '"' + pbPbAt + '"') else ""} \
      ~{if defined(checkCheckDependency) then ("--check-dependency " +  '"' + checkCheckDependency + '"') else ""} \
      ~{if defined(numNumProcs) then ("--num-procs " +  '"' + numNumProcs + '"') else ""} \
      ~{if defined(sortSortMem) then ("--sort-mem " +  '"' + sortSortMem + '"') else ""} \
      ~{if defined(numNumUpstreamBases) then ("--num-upstream-bases " +  '"' + numNumUpstreamBases + '"') else ""} \
      ~{if defined(numNumDownstreamBases) then ("--num-downstream-bases " +  '"' + numNumDownstreamBases + '"') else ""} \
      ~{if defined(generateGenerateAllCFile) then ("--generate-allc-file " +  '"' + generateGenerateAllCFile + '"') else ""} \
      ~{if defined(generateGenerateMPileUpFile) then ("--generate-mpileup-file " +  '"' + generateGenerateMPileUpFile + '"') else ""} \
      ~{if defined(compressCompressOutput) then ("--compress-output " +  '"' + compressCompressOutput + '"') else ""} \
      ~{if defined(bBGzip) then ("--bgzip " +  '"' + bBGzip + '"') else ""} \
      ~{if defined(pathPathToBGzip) then ("--path-to-bgzip " +  '"' + pathPathToBGzip + '"') else ""} \
      ~{if defined(pathPathToTabIx) then ("--path-to-tabix " +  '"' + pathPathToTabIx + '"') else ""} \
      ~{if defined(trimTrimReads) then ("--trim-reads " +  '"' + trimTrimReads + '"') else ""} \
      ~{if defined(pathPathToCutAdapt) then ("--path-to-cutadapt " +  '"' + pathPathToCutAdapt + '"') else ""} \
      ~{if defined(pathPathToAligner) then ("--path-to-aligner " +  '"' + pathPathToAligner + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(alignerAlignerOptions) then ("--aligner-options " +  '"' + alignerAlignerOptions + '"') else ""} \
      ~{if defined(mergeMergeByMaxMapq) then ("--merge-by-max-mapq " +  '"' + mergeMergeByMaxMapq + '"') else ""} \
      ~{if defined(removeRemoveClonal) then ("--remove-clonal " +  '"' + removeRemoveClonal + '"') else ""} \
      ~{if defined(pathPathToPicard) then ("--path-to-picard " +  '"' + pathPathToPicard + '"') else ""} \
      ~{if defined(keepKeepClonalStats) then ("--keep-clonal-stats " +  '"' + keepKeepClonalStats + '"') else ""} \
      ~{if defined(javaJavaOptions) then ("--java-options " +  '"' + javaJavaOptions + '"') else ""} \
      ~{if defined(pathPathToSamTools) then ("--path-to-samtools " +  '"' + pathPathToSamTools + '"') else ""} \
      ~{if defined(adapterAdapterSeqRead1) then ("--adapter-seq-read1 " +  '"' + adapterAdapterSeqRead1 + '"') else ""} \
      ~{if defined(adapterAdapterSeqRead2) then ("--adapter-seq-read2 " +  '"' + adapterAdapterSeqRead2 + '"') else ""} \
      ~{if defined(removeRemoveChrPrefix) then ("--remove-chr-prefix " +  '"' + removeRemoveChrPrefix + '"') else ""} \
      ~{if defined(addAddSnpInfo) then ("--add-snp-info " +  '"' + addAddSnpInfo + '"') else ""} \
      ~{if defined(unmethylatedUnmethylatedControl) then ("--unmethylated-control " +  '"' + unmethylatedUnmethylatedControl + '"') else ""} \
      ~{if defined(binBinOmTest) then ("--binom-test " +  '"' + binBinOmTest + '"') else ""} \
      ~{if defined(sigSigCutOff) then ("--sig-cutoff " +  '"' + sigSigCutOff + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(maxMaxAdapterRemoval) then ("--max-adapter-removal " +  '"' + maxMaxAdapterRemoval + '"') else ""} \
      ~{if defined(overlapOverlapLength) then ("--overlap-length " +  '"' + overlapOverlapLength + '"') else ""} \
      ~{if defined(zeroZeroCap) then ("--zero-cap " +  '"' + zeroZeroCap + '"') else ""} \
      ~{if defined(errorErrorRate) then ("--error-rate " +  '"' + errorErrorRate + '"') else ""} \
      ~{if defined(minMinQualScore) then ("--min-qual-score " +  '"' + minMinQualScore + '"') else ""} \
      ~{if defined(minMinReadLen) then ("--min-read-len " +  '"' + minMinReadLen + '"') else ""} \
      ~{if defined(minMinBaseQuality) then ("--min-base-quality " +  '"' + minMinBaseQuality + '"') else ""} \
      ~{if defined(keepKeepTempFiles) then ("--keep-temp-files " +  '"' + keepKeepTempFiles + '"') else ""}
  >>>
}