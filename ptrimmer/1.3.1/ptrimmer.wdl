version 1.0

task Ptrimmer {
  input {
    Boolean keepKeep
    Boolean seqtypeSeqtype
    Boolean ampAmpFile
    Boolean readRead1
    Boolean readRead2
    Boolean outdirOutdir
    Boolean minMinQual
    Boolean kmKmEr
    Boolean mismatchMismatch
    String? pPTrimmer
  }
  command <<<
    ptrimmer \
      ~{pPTrimmer} \
      ~{true="--keep" false="" keepKeep} \
      ~{true="--seqtype" false="" seqtypeSeqtype} \
      ~{true="--ampfile" false="" ampAmpFile} \
      ~{true="--read1" false="" readRead1} \
      ~{true="--read2" false="" readRead2} \
      ~{true="--outdir" false="" outdirOutdir} \
      ~{true="--minqual" false="" minMinQual} \
      ~{true="--kmer" false="" kmKmEr} \
      ~{true="--mismatch" false="" mismatchMismatch}
  >>>
}