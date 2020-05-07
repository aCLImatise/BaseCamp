version 1.0

task Contig2contigOutcontigfile {
  input {
    String? seqSeqFile
    String? contigContigFile
    String? outOutContigFile
  }
  command <<<
    contig2contig outcontigfile \
      ~{seqSeqFile} \
      ~{contigContigFile} \
      ~{outOutContigFile}
  >>>
}