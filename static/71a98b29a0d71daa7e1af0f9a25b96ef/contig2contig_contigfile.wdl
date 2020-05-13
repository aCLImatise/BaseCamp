version 1.0

task Contig2contigContigfile {
  input {
    String? seqSeqFile
    String? contigContigFile
    String? outOutContigFile
  }
  command <<<
    contig2contig contigfile \
      ~{seqSeqFile} \
      ~{contigContigFile} \
      ~{outOutContigFile}
  >>>
}