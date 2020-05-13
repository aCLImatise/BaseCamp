version 1.0

task Pilon {
  input {
    String genomeGenome
    String fragsFrags
    String jumpsJumps
    String unpairedUnpaired
    String bamBam
    String outputOutput
    Directory outdirOutdir
    Boolean changesChanges
    Boolean vcfVcf
    Boolean vcfVcfQe
    Boolean tracksTracks
    Boolean variantVariant
    Boolean chunksizeChunksize
    Boolean diploidDiploid
    String fixFix
    Boolean dumpDumpReads
    Boolean duplicatesDuplicates
    Boolean iupacIupac
    Boolean nonNonPf
    String targetsTargets
    Boolean threadsThreads
    Boolean verboseVerbose
    Boolean debugDebug
    String defaultDefaultQual
    String flankFlank
    Boolean gapGapMargin
    Boolean kK
    String minMinDepth
    Boolean minMinGap
    Boolean minMinMq
    Boolean minMinQual
    Boolean noNoStrays
  }
  command <<<
    pilon \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(fragsFrags) then ("--frags " +  '"' + fragsFrags + '"') else ""} \
      ~{if defined(jumpsJumps) then ("--jumps " +  '"' + jumpsJumps + '"') else ""} \
      ~{if defined(unpairedUnpaired) then ("--unpaired " +  '"' + unpairedUnpaired + '"') else ""} \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{true="--changes" false="" changesChanges} \
      ~{true="--vcf" false="" vcfVcf} \
      ~{true="--vcfqe" false="" vcfVcfQe} \
      ~{true="--tracks" false="" tracksTracks} \
      ~{true="--variant" false="" variantVariant} \
      ~{true="--chunksize" false="" chunksizeChunksize} \
      ~{true="--diploid" false="" diploidDiploid} \
      ~{if defined(fixFix) then ("--fix " +  '"' + fixFix + '"') else ""} \
      ~{true="--dumpreads" false="" dumpDumpReads} \
      ~{true="--duplicates" false="" duplicatesDuplicates} \
      ~{true="--iupac" false="" iupacIupac} \
      ~{true="--nonpf" false="" nonNonPf} \
      ~{if defined(targetsTargets) then ("--targets " +  '"' + targetsTargets + '"') else ""} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(defaultDefaultQual) then ("--defaultqual " +  '"' + defaultDefaultQual + '"') else ""} \
      ~{if defined(flankFlank) then ("--flank " +  '"' + flankFlank + '"') else ""} \
      ~{true="--gapmargin" false="" gapGapMargin} \
      ~{true="--K" false="" kK} \
      ~{if defined(minMinDepth) then ("--mindepth " +  '"' + minMinDepth + '"') else ""} \
      ~{true="--mingap" false="" minMinGap} \
      ~{true="--minmq" false="" minMinMq} \
      ~{true="--minqual" false="" minMinQual} \
      ~{true="--nostrays" false="" noNoStrays}
  >>>
}