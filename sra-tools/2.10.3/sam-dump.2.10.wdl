version 1.0

task SamDump.2.10.3 {
  input {
    Boolean cigarCigarCg
    Boolean headerHeader
    File headerHeaderFile
    Boolean noNoHeader
    String headerHeaderComment
    Boolean alignedAlignedRegion
    Boolean mateMatePairDistance
    Boolean seqSeqId
    Boolean gzipGzip
    Boolean bzip2Bzip2
    Boolean spotSpotGroup
    Boolean fastFastQ
    Boolean fastFastA
    String prefixPrefix
    Boolean reverseReverse
    Boolean cigarCigarCgMerge
    Boolean xiXi
    String qualQualQuant
    Boolean cgCgEvidence
    Boolean cgCgEvDnb
    Boolean cgCgMappings
    Boolean cgCgSam
    Boolean reportReport
    File outputOutputFile
    Int outputOutputBufferSize
    Boolean cacheCacheReport
    Boolean unalignedUnalignedSpotsOnly
    Boolean cgCgNames
    Int cursorCursorCache
    String minMinMapq
    Boolean noNoMateCache
    Boolean rnaRnaSplicing
    String rnaRnaSpliceLevel
    File rnaRnaSpliceLog
    Boolean withWithMdFlag
    File ngcNgc
    File permPerm
    String locationLocation
    File cartCart
    Boolean disableDisableMultithreading
    String logLogLevel
    File optionOptionFile
  }
  command <<<
    sam-dump.2.10.3 \
      ~{true="--cigar-CG" false="" cigarCigarCg} \
      ~{true="--header" false="" headerHeader} \
      ~{if defined(headerHeaderFile) then ("--header-file " +  '"' + headerHeaderFile + '"') else ""} \
      ~{true="--no-header" false="" noNoHeader} \
      ~{if defined(headerHeaderComment) then ("--header-comment " +  '"' + headerHeaderComment + '"') else ""} \
      ~{true="--aligned-region" false="" alignedAlignedRegion} \
      ~{true="--matepair-distance" false="" mateMatePairDistance} \
      ~{true="--seqid" false="" seqSeqId} \
      ~{true="--gzip" false="" gzipGzip} \
      ~{true="--bzip2" false="" bzip2Bzip2} \
      ~{true="--spot-group" false="" spotSpotGroup} \
      ~{true="--fastq" false="" fastFastQ} \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{true="--reverse" false="" reverseReverse} \
      ~{true="--cigar-cg-merge" false="" cigarCigarCgMerge} \
      ~{true="--XI" false="" xiXi} \
      ~{if defined(qualQualQuant) then ("--qual-quant " +  '"' + qualQualQuant + '"') else ""} \
      ~{true="--CG-evidence" false="" cgCgEvidence} \
      ~{true="--CG_ev-dnb" false="" cgCgEvDnb} \
      ~{true="--CG-mappings" false="" cgCgMappings} \
      ~{true="--CG-SAM" false="" cgCgSam} \
      ~{true="--report" false="" reportReport} \
      ~{if defined(outputOutputFile) then ("--output-file " +  '"' + outputOutputFile + '"') else ""} \
      ~{if defined(outputOutputBufferSize) then ("--output-buffer-size " +  '"' + outputOutputBufferSize + '"') else ""} \
      ~{true="--cachereport" false="" cacheCacheReport} \
      ~{true="--unaligned-spots-only" false="" unalignedUnalignedSpotsOnly} \
      ~{true="--CG-names" false="" cgCgNames} \
      ~{if defined(cursorCursorCache) then ("--cursor-cache " +  '"' + cursorCursorCache + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{true="--no-mate-cache" false="" noNoMateCache} \
      ~{true="--rna-splicing" false="" rnaRnaSplicing} \
      ~{if defined(rnaRnaSpliceLevel) then ("--rna-splice-level " +  '"' + rnaRnaSpliceLevel + '"') else ""} \
      ~{if defined(rnaRnaSpliceLog) then ("--rna-splice-log " +  '"' + rnaRnaSpliceLog + '"') else ""} \
      ~{true="--with-md-flag" false="" withWithMdFlag} \
      ~{if defined(ngcNgc) then ("--ngc " +  '"' + ngcNgc + '"') else ""} \
      ~{if defined(permPerm) then ("--perm " +  '"' + permPerm + '"') else ""} \
      ~{if defined(locationLocation) then ("--location " +  '"' + locationLocation + '"') else ""} \
      ~{if defined(cartCart) then ("--cart " +  '"' + cartCart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disableDisableMultithreading} \
      ~{if defined(logLogLevel) then ("--log-level " +  '"' + logLogLevel + '"') else ""} \
      ~{if defined(optionOptionFile) then ("--option-file " +  '"' + optionOptionFile + '"') else ""}
  >>>
}