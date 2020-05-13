version 1.0

task Contig2contigSeqfileContigfile {
  input {
    String? outOutContigFile
  }
  command <<<
    contig2contig seqfile contigfile \
      ~{outOutContigFile}
  >>>
}