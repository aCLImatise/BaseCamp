version 1.0

task BitmapperBS {
  input {
    Boolean indexIndex
    Boolean indexIndexFolder
    Boolean searchSearch
    Boolean fastFast
    Boolean sensitiveSensitive
    Boolean seqSeq
    Boolean seq1Seq1
    Boolean seq2Seq2
    Boolean oO
    Boolean samSam
    Boolean bamBam
    Boolean meMeThyOut
    Boolean eE
    Boolean minMin
    Boolean maxMax
    Boolean threadsThreads
    Boolean pbPbAt
    Boolean unmappedUnmappedOut
    Boolean ambiguousAmbiguousOut
    Boolean mapstatsMapstats
    Boolean phred33Phred33
    Boolean phred64Phred64
    Boolean mpMpMax
    Boolean mpMpMin
    Boolean npNp
    Boolean gapGapOpen
    Boolean gapGapExtension
  }
  command <<<
    bitmapperBS \
      ~{true="--index" false="" indexIndex} \
      ~{true="--index_folder" false="" indexIndexFolder} \
      ~{true="--search" false="" searchSearch} \
      ~{true="--fast" false="" fastFast} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{true="--seq" false="" seqSeq} \
      ~{true="--seq1" false="" seq1Seq1} \
      ~{true="--seq2" false="" seq2Seq2} \
      ~{true="-o" false="" oO} \
      ~{true="--sam" false="" samSam} \
      ~{true="--bam" false="" bamBam} \
      ~{true="--methy_out" false="" meMeThyOut} \
      ~{true="-e" false="" eE} \
      ~{true="--min" false="" minMin} \
      ~{true="--max" false="" maxMax} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--pbat" false="" pbPbAt} \
      ~{true="--unmapped_out" false="" unmappedUnmappedOut} \
      ~{true="--ambiguous_out" false="" ambiguousAmbiguousOut} \
      ~{true="--mapstats" false="" mapstatsMapstats} \
      ~{true="--phred33" false="" phred33Phred33} \
      ~{true="--phred64" false="" phred64Phred64} \
      ~{true="--mp_max" false="" mpMpMax} \
      ~{true="--mp_min" false="" mpMpMin} \
      ~{true="--np" false="" npNp} \
      ~{true="--gap_open" false="" gapGapOpen} \
      ~{true="--gap_extension" false="" gapGapExtension}
  >>>
}