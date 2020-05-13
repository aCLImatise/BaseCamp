version 1.0

task RnazIndex.pl {
  input {
    Boolean gffGff
    Boolean bedBed
    Boolean cC
    Boolean fastFastA
    Boolean seqSeqDir
    Boolean forwardForward
    Boolean ucscUcsc
    Boolean lociLoci
    Boolean windowsWindows
    Boolean htmlHtml
    Boolean manMan
    File? fileFile
  }
  command <<<
    rnazIndex.pl \
      ~{fileFile} \
      ~{true="--gff" false="" gffGff} \
      ~{true="--bed" false="" bedBed} \
      ~{true="-c" false="" cC} \
      ~{true="--fasta" false="" fastFastA} \
      ~{true="--seq-dir" false="" seqSeqDir} \
      ~{true="--forward" false="" forwardForward} \
      ~{true="--ucsc" false="" ucscUcsc} \
      ~{true="--loci" false="" lociLoci} \
      ~{true="--windows" false="" windowsWindows} \
      ~{true="--html" false="" htmlHtml} \
      ~{true="--man" false="" manMan}
  >>>
}