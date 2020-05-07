version 1.0

task Bfmtx2m4.plThisDirectory {
  input {
    String? thisThis
    String? m4preM4pre
    String? allAllNormFa
  }
  command <<<
    bfmtx2m4.pl this directory \
      ~{thisThis} \
      ~{m4preM4pre} \
      ~{allAllNormFa}
  >>>
}