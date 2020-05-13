version 1.0

task Contig2contigSeqfileOutcontigfile {
  input {
    String? contigContigFile
    String? outOutContigFile
  }
  command <<<
    contig2contig seqfile outcontigfile \
      ~{contigContigFile} \
      ~{outOutContigFile}
  >>>
}