version 1.0

task QuastLg.py {
  input {
    Boolean kKMerSize
    Boolean circoCircoS
    Boolean mgmMgm
    Boolean glimmerGlimmer
    Boolean geneGeneThresholds
    Boolean rnaRnaFinding
    Boolean operonsOperons
    Int estEstRefSize
    Boolean contigContigThresholds
    Float minMinIdentity
    Float ambiguityAmbiguityScore
    Boolean strictStrictNa
    Boolean scaffoldScaffoldGapMaxSize
    Boolean unalignedUnalignedPartSize
    Boolean skipSkipUnalignedMisContigs
    Boolean fragmentedFragmented
    Boolean fragmentedFragmentedMaxIndent
    Boolean upperUpperBoundAssembly
    Boolean upperUpperBoundMinCon
    Boolean estEstInsertSize
    Boolean plotsPlotsFormat
    Boolean memoryMemoryEfficient
    Boolean spaceSpaceEfficient
    Boolean pe12Pe12
    Boolean mp1Mp1
    Boolean mp2Mp2
    Boolean mp12Mp12
    Boolean singleSingle
    Boolean pacPacBio
    Boolean nanoNanoPore
    File refRefSam
    File refRefBam
    Boolean samSam
    Boolean bamBam
    Boolean svSvBedPe
    Boolean noNoCheck
    Boolean noNoPlots
    Boolean noNoHtml
    Boolean noNoIcarus
    Boolean noNoSnps
    Boolean noNoGc
    Boolean noNoSv
    Boolean noNoGzip
    Boolean noNoReadStats
    Boolean fastFast
    Boolean silentSilent
    Boolean testTest
    Boolean testTestSv
  }
  command <<<
    quast-lg.py \
      ~{true="--k-mer-size" false="" kKMerSize} \
      ~{true="--circos" false="" circoCircoS} \
      ~{true="--mgm" false="" mgmMgm} \
      ~{true="--glimmer" false="" glimmerGlimmer} \
      ~{true="--gene-thresholds" false="" geneGeneThresholds} \
      ~{true="--rna-finding" false="" rnaRnaFinding} \
      ~{true="--operons" false="" operonsOperons} \
      ~{if defined(estEstRefSize) then ("--est-ref-size " +  '"' + estEstRefSize + '"') else ""} \
      ~{true="--contig-thresholds" false="" contigContigThresholds} \
      ~{if defined(minMinIdentity) then ("--min-identity " +  '"' + minMinIdentity + '"') else ""} \
      ~{if defined(ambiguityAmbiguityScore) then ("--ambiguity-score " +  '"' + ambiguityAmbiguityScore + '"') else ""} \
      ~{true="--strict-NA" false="" strictStrictNa} \
      ~{true="--scaffold-gap-max-size" false="" scaffoldScaffoldGapMaxSize} \
      ~{true="--unaligned-part-size" false="" unalignedUnalignedPartSize} \
      ~{true="--skip-unaligned-mis-contigs" false="" skipSkipUnalignedMisContigs} \
      ~{true="--fragmented" false="" fragmentedFragmented} \
      ~{true="--fragmented-max-indent" false="" fragmentedFragmentedMaxIndent} \
      ~{true="--upper-bound-assembly" false="" upperUpperBoundAssembly} \
      ~{true="--upper-bound-min-con" false="" upperUpperBoundMinCon} \
      ~{true="--est-insert-size" false="" estEstInsertSize} \
      ~{true="--plots-format" false="" plotsPlotsFormat} \
      ~{true="--memory-efficient" false="" memoryMemoryEfficient} \
      ~{true="--space-efficient" false="" spaceSpaceEfficient} \
      ~{true="--pe12" false="" pe12Pe12} \
      ~{true="--mp1" false="" mp1Mp1} \
      ~{true="--mp2" false="" mp2Mp2} \
      ~{true="--mp12" false="" mp12Mp12} \
      ~{true="--single" false="" singleSingle} \
      ~{true="--pacbio" false="" pacPacBio} \
      ~{true="--nanopore" false="" nanoNanoPore} \
      ~{if defined(refRefSam) then ("--ref-sam " +  '"' + refRefSam + '"') else ""} \
      ~{if defined(refRefBam) then ("--ref-bam " +  '"' + refRefBam + '"') else ""} \
      ~{true="--sam" false="" samSam} \
      ~{true="--bam" false="" bamBam} \
      ~{true="--sv-bedpe" false="" svSvBedPe} \
      ~{true="--no-check" false="" noNoCheck} \
      ~{true="--no-plots" false="" noNoPlots} \
      ~{true="--no-html" false="" noNoHtml} \
      ~{true="--no-icarus" false="" noNoIcarus} \
      ~{true="--no-snps" false="" noNoSnps} \
      ~{true="--no-gc" false="" noNoGc} \
      ~{true="--no-sv" false="" noNoSv} \
      ~{true="--no-gzip" false="" noNoGzip} \
      ~{true="--no-read-stats" false="" noNoReadStats} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--silent" false="" silentSilent} \
      ~{true="--test" false="" testTest} \
      ~{true="--test-sv" false="" testTestSv}
  >>>
}