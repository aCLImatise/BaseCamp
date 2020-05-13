version 1.0

task Isescan.py {
  input {
    Boolean removeRemoveShortIs
    Boolean noNoFragGenesCan
    String nNThread
    String? seqSeqFile
    File? path2Path2Proteome
    File? path2hmmPath2hmm
  }
  command <<<
    isescan.py \
      ~{seqSeqFile} \
      ~{true="--removeShortIS" false="" removeRemoveShortIs} \
      ~{true="--no-FragGeneScan" false="" noNoFragGenesCan} \
      ~{if defined(nNThread) then ("--nthread " +  '"' + nNThread + '"') else ""} \
      ~{path2Path2Proteome} \
      ~{path2hmmPath2hmm}
  >>>
}