version 1.0

task GetAnnoFasta.pl {
  input {
    String seqSeqFile
    Boolean chopChopCds
  }
  command <<<
    getAnnoFasta.pl \
      ~{if defined(seqSeqFile) then ("--seqfile " +  '"' + seqSeqFile + '"') else ""} \
      ~{true="--chop_cds" false="" chopChopCds}
  >>>
}